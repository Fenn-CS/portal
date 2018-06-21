#!/bin/bash
# Run test and generate xml report!
./run_tests.sh --pylint 

pylint --disable=W1202 --output-format=parseable --reports=no module_name1 module_name2 > reports/pylint.log || true
