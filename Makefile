.PHONY: all lint test test-cov install dev clean distclean

PYTHON ?= python

all: ;

lint:
	q2lint
	flake8

test: all
	py.test

test-cov: all
	py.test --cov=q2_sidle

install: all
	$(PYTHON) setup.py install

dev: all
	pip install -e . --no-deps

clean: distclean

distclean: ;
