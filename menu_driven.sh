#!/bin/bash

while true
do
    clear
    echo "-------- MENU --------"
    echo "1. Show current date and time"
    echo "2. Display list of files in the current directory"
    echo "3. Display the contents of a file"
    echo "4. Show disk usage"
    echo "5. Exit"
    echo "----------------------"
    read -p "Enter your choice: " choice

    case $choice in
        1)
            echo "Current date and time:"
            date
            ;;
        2)
            echo "Files in the current directory:"
            ls -l
            ;;
        3)
            read -p "Enter filename: " fname
            if [[ -f "$fname" ]]; then
                echo "Contents of $fname:"
                cat "$fname"
            else
                echo "File not found!"
            fi
            ;;
        4)
            echo "Disk usage:"
            df -h
            ;;
        5)
            echo "Exiting... Goodbye!"
            exit 0
            ;;
        *)
            echo "Invalid choice. Try again."
            ;;
    esac

    echo
    read -p "Press Enter to continue..."
done
