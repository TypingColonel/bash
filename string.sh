#!/usr/bin/env/bash

read -p "hello mine name ist sanjay: " name
echo ${#name}

for i in *; do
    if [ "${i: -3}" = ".sh" ]; then
        echo $i
    fi
done

# $i == *.java