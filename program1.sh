#!/usr/bin/env/bash

check_operator_exists() {
    for i in + - \* /; do
        if [ "$i" = "$1" ]; then
            return 1
        fi
    done
    
    return 0
}

while true; do
 
    echo -e "These are the operators you can play with + - x / " 

    read -p "Enter the first operand " first_operand
    read -p "Enter the second operand " second_operand

    read -p "Enter the operator " operator

    if ! check_operator_exists $operator; then
        echo "Invalid operator try again"
        continue
    fi

    echo $(($first_operand $operator $second_opera  nd))

done