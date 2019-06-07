#!/bin/bash

# gets the date
date=$(date)

# get the topic
topic="$1"

# file name to write to
filename="${HOME}/${topic}note.txt"

# ask user for input
read -p "Your note: " note

if [[ $note ]]; then
    echo "$date: $note" >> "$filename"
    echo "Note '$note' saved to $filename"
else
    echo "No input; note was not saved"
fi
exit 0
