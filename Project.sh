#! /bin/bash

# Function to copy file with search word to /tmp/out
copy_file() {
    local search="$1"
    local filepath="$2"
    # Differentiate between files and directories
    if [ -f "$filepath" ]; then # File
        # Find specific word in a file
        result=$(grep -in $search "$filepath")
        # Copy if result is found
        if [ -z "$result" ]; then
            echo "NOT FOUND: $filepath"
        else
            echo "FOUND: $filepath"
            filename=$(basename $filepath)
            cp "$filepath" /tmp/out/"$filename"
            echo "" >> /tmp/out/"$filename"
            echo "******************" >> /tmp/out/"$filename"
            echo "$result" >> /tmp/out/"$filename"
        fi
    fi
}

# Remove and make new directory to store output
rm -r /tmp/out
mkdir /tmp/out

# Set word to find
word="Apple" 

# Loop through all directories in a folder
for dir in $(find . -type d);
do
    # Ensure it does not check output folder
    if [ $dir != "/tmp/out" ] ; then
        echo "=== Checking in: $dir ==="
        #Loop through all items in directory
        for i in $dir/* ;
        do
            copy_file $word $i
        done
    fi
done

# Check
echo "=== Results ==="
ls /tmp/out
