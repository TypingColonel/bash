#!/usr/bin/env/bash

echo $(pwd)

echo -e "FOR THE FIRST TEXT FILE /n"
bash 1st.sh < 1st.txt

echo -e "For the second bash file /n"

bash random1.sh < random.txt

echo -e "completed running the files /n"