#!/usr/bin/env python3
from setuptools import setup

setup(
    name="CSFD",
    version="0.0.1",
    description="CSFD Top favourites",
    author="Michal Mladek",
    author_email="michal.mladek.78@gmail.com",
    # TODO: url="",
    install_requires=[
        "django",
        "psycopg2-binary",
        "requests",
        "beautifulsoup4"
    ],
    extras_require={
        "devel": [
            "ipython",
            "mock"
        ]
    }
)
