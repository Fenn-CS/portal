#!/bin/bash
# Run test and produce all reports!
# ./scripts/run_tests.sh -- --cov --cov-report=html --junitxml=reports/junit.xml

pylint --disable=W1202 --output-format=parseable --reports=no  > reports/pylint.log || true