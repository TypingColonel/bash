#!/usr/bin/env/bash

read -p "Enter the name of the file " file_name
files=$(cat $file_name)

n=1

for line in $files; do
    echo "line $n has $(wc -w <<< j$line) words"
    n=$((n + 1))
done