#!/usr/bin/env/bash

<< "QUESTION"

In shell script,
Using input get a file name.
If exists then print the number of lines and word counts
If file doesn’t not exist. Display “ file not found.”
Do 2 test case)1. If file exists 2. File does not exist

QUESTION

read -p "Enter the name of the file: " file_name

if ! [[ -f $file_name ]]; then
    echo "File does not exists try again"
    exit
fi

file=$(cat $file_name)

echo $(wc -l < $file_name)

