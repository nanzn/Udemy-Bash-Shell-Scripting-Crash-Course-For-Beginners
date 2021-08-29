#! /bin/bash

# Remove and make new directory to store output
rm -r /tmp/out
mkdir /tmp/out

# Set word to find
word="Apple" 

# Create a loop on all items in a folder
for i in *;
do
    # Differentiate between files and directories
    if [ -f "$i" ]; then # File
        # Find specific word in a file
        result=$(grep -in $word "$i")
        # Copy if result is found
        if [ -z "$result" ]; then
            echo "Not Found in $i"
        else
            echo "Found in $i"
            cp "$i" /tmp/out/
            echo "" >> /tmp/out/"$i"
            echo "******************" >> /tmp/out/"$i"
            echo "$result" >> /tmp/out/"$i"
        fi
    else # Directory
        echo "$i is not a file"
    fi
done

ls -l /tmp/out
