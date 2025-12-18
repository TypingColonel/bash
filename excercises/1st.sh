#!/usr/bin/env/bash

<< "Question"

Write a shell script called my_folder.sh that takes in two
arguments: your name (e.g. ayelet) and your name with the .txt
ending (e.g. ayelet.txt). The script should call a function that creates
a folder by the name of the first argument (e.g. ayelet) and then create
a file inside by the name of the second argument (e.g. ayelet.txt).
For my name, my function would create a folder named ayelet and a file
named ayelet.txt inside of ayelet.

Question

read -p "Enter the name of the folder: " folder_name
read -p "Enter the name of the file to be stored in $folder_name " file_name

$(mkdir $folder_name)
$(cd $folder_name && touch $file_name)

echo "CHECK TO FIND OUT IF IT EXISTS OR NOT"