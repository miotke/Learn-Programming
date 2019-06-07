#!/bin/bash

# Finds specific text inside a txt file and replaces it
# Creates a .bak file before the change

sed -i .bak 's/testing 123/456 testing/g' ~/Desktop/test.txt
