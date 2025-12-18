#!/usr/bin/env/bash

age=51

if [ $age -lt 18 ]; then
    echo -e "NOT ELIGIBLE TO VOTE IN THE UPCOMMING ELECTION"
elif [ $age -gt 100 ]; then
    echo -e "NOT ELIGIBLE TO VOTE IN THE UPCOMMING ELECTION"
else
    echo -e "ELIGIBLE FOR THE ELECTIONS"
fi