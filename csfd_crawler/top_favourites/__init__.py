from typing import Any, Iterator
from bs4 import BeautifulSoup
import requests
import re
import logging
import unicodedata

from django.conf import settings
from django.http import QueryDict


BASE_URL = settings.CSFD_BASE_URL
HTTP_HEADERS = settings.CSFD_BASE_HEADERS
EXTERNAL_ID_REGEX = re.compile(settings.CSFD_EXTERNAL_ID_REGEX)


def normalize(text: str) -> str:
    text = text.lower()
    text = unicodedata.normalize('NFKD', text)
    text = ''.join(c for c in text if not unicodedata.combining(c))
    return text


def __get_top_favourites(count_of_hundreds: int) -> Iterator[Any]:
    for current_from in range(0, count_of_hundreds):
        query = QueryDict("show=complete", mutable=True)
        if from_hundreds := current_from * 100:
            query["from"] = from_hundreds
        url = f"{BASE_URL}/zebricky/filmy/nejlepsi/?{query.urlencode()}"
        res = requests.get(url, headers=HTTP_HEADERS)
        if res.status_code == 200:
            yield res.content
        else:
            msg = (
                "Attempt to get movies 'from={from_hundreds}' "
                "ends with 'status code={status_code}' "
                "and 'content={content}...'"
            ).format(
                from_hundreds=from_hundreds,
                status_code=res.status_code,
                content=res.content[:255]
            )
            logging.debug(msg)
            yield None


def __get_film_articles(count_of_hundreds: int) -> Iterator[object]:
    for html_doc in __get_top_favourites(count_of_hundreds):
        if html_doc is None:
            yield None
        soup = BeautifulSoup(html_doc, "html.parser")
        for article in soup.find_all("article"):
            yield article


def __get_film_links(count_of_hundreds: int) -> Iterator[object]:
    for article in __get_film_articles(count_of_hundreds):
        if article is None:
            yield None
        for link in article.find_all("a"):
            yield link


def __get_film(link: object) -> Any:
    if "film-title-name" in link.get("class", []):
        external_id = re.findall(EXTERNAL_ID_REGEX, link["href"])[0]
        return link["title"].strip(), int(external_id), link["href"], normalize(link["title"].strip())
    else:
        return None


def get_films(count_of_hundreds: int = settings.COUNT_OF_HUNDREDS) -> Iterator[tuple]:
    for link in __get_film_links(count_of_hundreds):
        if link is None:
            yield None
        if film := __get_film(link):
            yield film


def __get_film_detail(href: str) -> Any:
    url = f"{BASE_URL}{href}"
    res = requests.get(url, headers=HTTP_HEADERS)
    if res.status_code == 200:
        return res.content
    else:
        msg = (
            "Attempt to get movie detail 'href={href}' "
            "ends with 'status code={status_code}' "
            "and 'content={content}...'"
        ).format(
            href=href,
            status_code=res.status_code,
            content=res.content[:255]
        )
        logging.debug(msg)
        return None


def __get_div_with_actors(href: str) -> object:
    html_doc = __get_film_detail(href)
    if html_doc is None:
        return None
    soup = BeautifulSoup(html_doc, "html.parser")
    for div_creator in soup.find("div", class_="creators").findAll("div"):
        if div_creator.find("h4", text=lambda innerHTML: "Hrají" in innerHTML):
            return div_creator


def __get_actors_links(div_creator: object) -> Iterator[object]:
    for link in div_creator.findAll("a"):
        if link.get("href", "").startswith("/tvurce/"):
            yield link


def __get_actor(link: object) -> tuple:
    external_id = re.findall(EXTERNAL_ID_REGEX, link["href"])[0]
    return link.text.strip(), int(external_id), normalize(link.text.strip())


def get_actors(href: str) -> Iterator[tuple]:
    div_creator = __get_div_with_actors(href)
    if div_creator is None:
        return None
    for link in __get_actors_links(div_creator):
        yield __get_actor(link)
