#!/bin/bash
# Run test and generate xml report!
./run_tests.sh --pylint 

pylint --disable=W1202 --output-format=parseable --reports=no > reports/pylint.log || true
