#!/usr/bin/python3
from runner import run
from sys import argv
if len(argv) > 1:
    run('--show "' + " ".join(argv[1:]) + '"')