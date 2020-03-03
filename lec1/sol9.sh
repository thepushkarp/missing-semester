#!/bin/bash

# Writes the "last modified" date output by the first system argument into
# the last-modified.txt file in the home directory.

# Throws an error if exactly one argument is not passed
if [ $# -lt 1 ]; then
    echo "$0: Error! Please provide an argument!" >&2; exit 1
elif [ $# -gt 1 ]; then
    echo "$0: Error! Please provide only one argument!" >&2; exit 1
fi

date -r $1 > ~/last-modified.txt
