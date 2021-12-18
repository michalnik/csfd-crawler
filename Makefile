.PHONY: all db-run db-init db-migrate run manage clear

SHELL := /bin/bash

# Project applications directories
DIR_APP := csfd

# Python virtual environment location
VENV_NAME ?= venv
VENV_BIN := $(VENV_NAME)/bin

# Python virtual environment applications
PYTHON := $(VENV_BIN)/python3
DJANGO := $(PYTHON) -m django

# which settings to use in CLI manage.py the script of Django
export PYTHONPATH := $(CURDIR)
export DJANGO_SETTINGS_MODULE := $(DIR_APP).settings

all:
	@echo 'make'
	@echo '    Print this help.'
	@echo 'make csfd-venv'
	@echo '    Create python3 virtualenv with "venv" name.'
	@echo 'make db-run'
	@echo '    Run database in a docker virtual environment.'
	@echo 'make db-init'
	@echo '    Recreate the database "csfd" and create extension "unaccent".'
	@echo 'make db-migrate'
	@echo '    Run Django migrations that was made before with "makemigrations"'
	@echo 'make run'
	@echo '    Run Django development server'
	@echo 'make manage'
	@echo '    Run Django admin to offer its management commands, you can parametrize it with'
	@echo '    variable "cli" passed to it on the command line, for example:'
	@echo '    `make manage cli="get_top_favourites --help".'
	@echo 'make clear'
	@echo '    Clear the development environment.'

csfd-venv: /tmp/csfd-venv
/tmp/csfd-venv: setup.py
	test -d $(VENV_NAME) || virtualenv -p python3 $(VENV_NAME)
	$(PYTHON) -m pip install -U pip setuptools
	$(PYTHON) -m pip install -e .[devel]
	touch /tmp/csfd-venv

db-run:
	sudo docker-compose up
db-init: /tmp/csfd-db-initialized
/tmp/csfd-db-initialized:
	@echo "Please, fill in database password 'postgres'"
	psql -U postgres -h localhost -f db-create-database.sql
	touch /tmp/csfd-db-initialized
db-migrate: csfd-venv db-init
	$(DJANGO) migrate $(cli)
db-import: db-init
	@echo "Please, fill in database password 'postgres'"
	psql -U postgres -h localhost -d csfd -f dump.sql;


run: csfd-venv
	$(DJANGO) runserver


manage: csfd-venv
	$(DJANGO) $(cli);


clear:
	rm -v -f /tmp/csfd-venv /tmp/csfd-db-initialized
	rm -r -f venv
