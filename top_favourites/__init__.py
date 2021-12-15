from typing import Any, Iterator
from bs4 import BeautifulSoup
import requests
import re

from django.conf import settings

BASE_URL = settings.CSFD_BASE_URL
HTTP_HEADERS = settings.CSFD_BASE_HEADERS
EXTERNAL_ID_REGEX = re.compile(settings.CSFD_EXTERNAL_ID_REGEX)


def __get_top_favourites(count_of_hundreds: int) -> Iterator[Any]:
    for current_from in range(0, count_of_hundreds):
        from_hundreds = current_from * 100
        url = f"{BASE_URL}/zebricky/filmy/nejlepsi/?from={from_hundreds}"
        res = requests.get(url, headers=HTTP_HEADERS)
        if res.status_code == 200:
            yield res.content
        else:
            yield None


def __get_film_articles(count_of_hundreds: int) -> Iterator[object]:
    for html_doc in __get_top_favourites(count_of_hundreds):
        soup = BeautifulSoup(html_doc, "html.parser")
        for article in soup.find_all("article"):
            yield article


def __get_film_links(count_of_hundreds: int) -> Iterator[object]:
    for article in __get_film_articles(count_of_hundreds):
        for link in article.find_all("a"):
            yield link


def __get_film(link: object) -> Any:
    if "film-title-name" in link.get("class", []):
        external_id = re.findall(EXTERNAL_ID_REGEX, link["href"])[0]
        return link["title"].strip(), int(external_id), link["href"]
    else:
        return None


def get_films(count_of_hundreds: int = settings.COUNT_OF_HUNDREDS) -> Iterator[tuple]:
    for link in __get_film_links(count_of_hundreds):
        if film := __get_film(link):
            yield film


def __get_film_detail(href: str) -> Any:
    url = f"{BASE_URL}{href}"
    res = requests.get(url, headers=HTTP_HEADERS)
    if res.status_code == 200:
        return res.content
    else:
        return None


def __get_div_with_actors(href: str) -> object:
    html_doc = __get_film_detail(href)
    soup = BeautifulSoup(html_doc, "html.parser")
    for div_creator in soup.find("div", **{"class": "creators"}).findAll("div"):
        if div_creator.find("h4", text="Hrají: "):
            return div_creator


def __get_actors_links(div_creator: object) -> Iterator[object]:
    for link in div_creator.findAll("a"):
        if link.get("href", "").startswith("/tvurce/"):
            yield link


def __get_actor(link: object) -> tuple:
    external_id = re.findall(EXTERNAL_ID_REGEX, link["href"])[0]
    return link.text.strip(), int(external_id)


def get_actors(href: str) -> Iterator[tuple]:
    div_creator = __get_div_with_actors(href)
    for link in __get_actors_links(div_creator):
        yield __get_actor(link)
