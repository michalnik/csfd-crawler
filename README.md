# CSFD crawler

## ⚠️ Legal Disclaimer

This project is intended **solely for educational purposes**, specifically for learning about web scraping and working with data using the Django framework.

The data used in this application was obtained from the publicly accessible website [ČSFD.cz](https://www.csfd.cz), and was downloaded **once** for offline use in a local database. The data is **not used commercially**, **not redistributed**, and is only present for learning and demonstration purposes within this repository.

**If you are a representative of ČSFD and would like this project to be modified or taken down, please feel free to contact me.**

## starting the project

### 1. run the database for development purpose

```bash
make db-run
```

### 2. initialize database for development purpose (while database is running)

```bash
make db-init
```

### 3. import database with data

```bash
make db-import
```

### 4. run development server to enable access GUI on localhost:8000

```bash
make run
```

## other commands

### run Django migrations

```bash
make db-migrate
```

### management command to fill database with Restaurants and Actors

```bash
make manage cli="get_top_favourites"
```

### clear installation

```bash
make clear
```
