#!/bin/bash

# Installs a company Google Chrome extension into the users Chrome extensions folder

# Variables
EXTPATH='~/Desktop/ChromeExtension/'
USERPATH='~/Documents/NewPath'

# The actual variables to use
# EXTPTH="~/Desktop/pioclpoplcdbaefihamjohnefbikjilc"
# USERPATH="~/Library/Application Support/Google/Chrome/Default/Extensions/"

#Logic of what to do with the files
# cp -r  ~/Desktop/ChromeExtension ~/Documents/NewPath
cp -r $EXTPATH $USERPATH
