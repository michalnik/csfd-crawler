.PHONY: db-run db-init

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
	psql -U postgres -h localhost -f db-create.sql
	@echo "Please, fill in database password 'csfd'"
	psql -U csfd -h localhost -c 'CREATE EXTENSION unaccent CASCADE;'
	touch /tmp/csfd-db-initialized
db-migrate: csfd-venv db-init
	$(DJANGO) migrate $(cli)

run: csfd-venv
	$(DJANGO) runserver


manage: csfd-venv
	$(DJANGO) $(cli);

clear:
	rm -v -f /tmp/csfd-venv /tmp/csfd-db-initialized
	rm -r -f venv
