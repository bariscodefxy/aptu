#!/usr/bin/python3
from runner import run
from sys import argv
if len(argv) > 1:
    run('--install "' + " ".join(argv[1:]) + '"')