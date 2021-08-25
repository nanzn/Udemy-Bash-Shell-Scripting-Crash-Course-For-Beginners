### EXERCISE-1 ###

#!/bin/bash

# Create  2 .txt files: "1.txt" "2.txt"
touch 1.txt 2.txt

# Inside 1.txt write the content of your pwd. in the long list format
ls -l > 1.txt

# Ask the user what prefix he wants to give to the file "1.txt"
read -p "Prefix to 1.txt: " prefix

# Change the name of "1.txt" adding to it the prefix choosen by the user
mv 1.txt ${prefix}1.txt

# CHECK: Content of 1.txt
echo "CHECK: Content of ${prefix}1.txt"
cat ${prefix}1.txt

# CHEKC: Files in current working directory
echo "CHECK: Files in current working directory"
ls -l

### EXERCISE-2 ###
#!/bin/bash

# Read name of new script to be created from user
read -p "Name of new script: " scriptName

# Create new script
touch ${scriptName}.sh

# Make new script executable
chmod +x ${scriptName}.sh

# Content of new script
echo "#!/bin/bash" >> ${scriptName}.sh
echo "ls -l" >> ${scriptName}.sh

# CHECK: Run new script
echo "CHECK: Run new script"
./${scriptName}.sh