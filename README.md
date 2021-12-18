# CSFD crawler

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
