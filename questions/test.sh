#!/usr/bin/env/bash

if [ -f log.txt ]; then
    touch log.txt
fi

echo "This particular script has run at $(date)" >> log.txt