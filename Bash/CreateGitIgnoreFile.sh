#!/bin/bash

# Creates a .gitignore file that will ignore the .DS_Store file on Macs
# This will be added to depending on the various files that need to be ignored for various projects
# To run, type sh CreateGitIgnoreFile.sh > .gitignore

cat <<- _EOF_
#Ignored files
.DS_Store
_EOF_
