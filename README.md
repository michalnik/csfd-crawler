# CSFD crawler

## ⚠️ Legal Disclaimer

This project is intended **solely for educational purposes**, specifically for learning about web scraping and working with data using the Django framework.

The data used in this application was obtained from the publicly accessible website [ČSFD.cz](https://www.csfd.cz), and was downloaded **once** for offline use in a local database. The data is **not used commercially**, **not redistributed**, and is only present for learning and demonstration purposes within this repository.

**If you are a representative of ČSFD and would like this project to be modified or taken down, please feel free to contact me.**

## starting the project

### 1. clone source, create virtual environment and install packages

```bash
git clone -b dev git@github.com:michalnik/csfd-crawler.git
cd csfd-crawler
python3.9 -m venv .venv
source .venv/bin/activate
python3.9 -m pip install -e .
```

### 2. initialize database

```bash
cd csfd_crawler
python manage.py migrate
```

### 3. download and store TOP 300 movies with their actors

```bash
# default is 1 hundred
python manage.py get_top_favourites --hundreds 3
```

### 4. run development server to enable access GUI on localhost:8000

```bash
python manage.py runserver
```

## 5. run browser and search
### click on the provided link from [previous command](http://localhost:8000)
You will see and input box ...
### just push enter key
You will see the same result
### fill * into input box and push enter key again
You will see all scraped movies and actors (max 300 entries)
### fill search text into input box and push enter key again
You will see matched movies and actors
### browse the results with clicks
- detail actor
- detail film
