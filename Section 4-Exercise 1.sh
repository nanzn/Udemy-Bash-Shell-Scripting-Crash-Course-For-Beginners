# !/bin/bash

### EXERCISE-1 ###
# Create a script that checks if a number is divisible by either 2, 3 or 5.
read -p "Number: " number

if [ $(( number % 2 )) -eq 0 ] || [ $(( number % 3 )) -eq 0 ] || [ $(( number % 5 )) -eq 0 ]
then
    echo "${number} is divisible by either 2, 3 or 5"
fi

# Create a function that does that.
ex1()
{
    local number=$1 # Set number as the first input parameter

    # Loop to check if number is divisible by 2,3,5
    for i in {2,3,5}
    do
        if [ $(( $number % $i )) -eq 0 ]; then
        echo "$number is divisible by $i"
        fi
    done
}

ex1 18