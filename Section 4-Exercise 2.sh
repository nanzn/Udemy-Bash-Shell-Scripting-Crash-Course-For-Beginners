# !/bin/bash

### EXERCISE-2 ###
# Create a script that counts the number of ".txt" files inside your present working directory.
count=0 # Initial count is zero

# Loop through all files in current directory ending with .txt
for i in ./*.txt
do
    ((count++))
done

echo "Number of .txt files is $count"