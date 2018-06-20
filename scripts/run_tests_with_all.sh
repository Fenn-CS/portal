#!/bin/bash
# Run test and produce all reports!
./run_tests.sh --cov --cov-report=html --junitxml=reports/junit.xml

pylint --disable=W1202 --output-format=parseable --reports=no app products testing > reports/pylint.log || true