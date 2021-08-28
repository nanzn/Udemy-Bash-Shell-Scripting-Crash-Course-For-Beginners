# !/bin/bash

### EXERCISE-3 ###
# User to chose either .jpg (j) or .txt (t) file to rename
echo "j for .jpg files"
echo "t for .txt files"

read -p "Input (j or t): " input
# Loop until user input "j" or "t"
while [ $input != "j" ] && [ $input != "t" ]; do
    echo "Please input j or t"
    read -p "Input (j or t): " input
done

# User to input prefix to add to name of all selected files
read -p "Please input prefix: " prefix

# Rename all the selected files adding this prefix to their name
case $input in
    "j")
        for i in *.jpg
        do
            mv $i ${prefix}${i}
        done
        ;;
    "t")
        for i in *.txt
        do
            mv $i ${prefix}${i}
        done
        ;;
esac