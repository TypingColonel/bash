#!/usr/bin/env/bash

num=0

while [ $num -lt 100 ]; do 
    echo -e "10 X $num = $((10 * $num))"
    num=$(($num + 1))
done

for element in {1..10}; do
    echo $(($element * 10))
done

echo -e "The below are the files in $(pwd)"

for element in *; do 
    echo $element
done

