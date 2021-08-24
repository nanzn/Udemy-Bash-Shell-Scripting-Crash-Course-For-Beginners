### EXERCISE-1 ###
## Part A ##
# List the content of your Home Folder
ls 

# List all the content of  folders that strts with "S" (capital)
ls | grep 'S'

## Part B ##
# Create a file "info.txt"  in your present working directory.
touch info.txt

# Inside "info.txt" write the long list information about 
# the last 4 files listed in /bin
ls -l /bin | tail -4 > info.txt

### EXERCISE-2 ###
## Part A ##
# Create a file "hello.txt" in your present working directory.
touch hello.txt

# Rename it as "hello.sh"
mv hello.txt hello.sh

# Make this file executable only by the owner
chmod 744 hello.sh

## Part B ##
# Read from imput a name of a file (invented by who is typing)
# and save it inside a variable
read filename

# Create a file with that name using the variable 
touch ${filename}

# Create a file with that name and the prefix "1_" attached in front of it
touch 1_${filename}

## Part C ## 
# Store the actual date and time using a variabe "important_time" and check it
important_time=$(date)
echo $important_time

# Create a Variable "dd"  that execute the command "date" and check it
dd=date

# What is the difference between $imp_date and $dd?
# $imp_date is the actual date
# $dd is the command date