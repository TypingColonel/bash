#!/usr/bin/env/bash

find_if_file_exists() {
    for i in *; do
        if [ $i == $1 ]; then
            echo "BITCH IT EXISTS"

        else
            echo $i
        fi
    done
}

find_if_file_exists $1