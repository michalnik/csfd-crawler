#!/usr/bin/env python3
from setuptools import setup

setup(
    name="CSFD",
    version="0.0.1",
    description="CSFD Top favourites",
    author="Michal Mladek",
    author_email="michal.mladek.78@gmail.com",
    python_requires='==3.9.*',
    install_requires=[
        "django~=2.2",
        "requests",
        "beautifulsoup4"
    ],
    extras_require={
        "dev": [
            "ipython",
            "mock"
        ]
    }
)
