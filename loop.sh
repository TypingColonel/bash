#!/usr/bin/env/bash

read -p "Enter the multiplication table you want: " table_number

num=0

while [ $num -le 10 ]; do
    echo -e "$num X $table_number = $((num * table_number))"
    num=$((num + 1))
done    

for i in {1..10}; do 
    continue
done

multiplication_table() {
    for i in {1..10}; do
        echo $((table_number * i))
    done
}

multiplication_table