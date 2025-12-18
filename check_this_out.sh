#!/bin/bash

while true; do
    echo "------ Menu ------"
    echo "1. List all processes"
    echo "2. Search for a process"
    echo "3. Show top CPU processes"
    echo "4. Kill a process"
    echo "5. Exit"
    read -p "Enter choice: " ch

    case $ch in
        1) ps -e ;;
        2)
            read -p "Enter process name: " name
            ps -e | grep "$name"
            ;;
        3)
            ps -eo pid,comm,%cpu --sort=-%cpu | head
            ;;
        4)
            read -p "Enter PID to kill: " pid
            kill "$pid"
            echo "Process killed (if PID existed)."
            ;;
        5) exit 0 ;;
        *) echo "Invalid choice" ;;
    esac

    echo
done
