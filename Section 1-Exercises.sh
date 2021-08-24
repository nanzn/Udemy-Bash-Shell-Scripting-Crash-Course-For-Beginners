### EXERCISE-1 ###
## Create a directory "Ex3/" inside your home folder ##
mkdir Ex3/

## Create 3 text-files inside "Ex3" ##
# Create 3 text files inside current directory
touch 1.txt 2.txt 3.txt
# Move text files to Ex3/
mv *.txt Ex3/

## Create 3 xls-files inside "Ex3" ##
# Change directory to Ex3/
cd Ex3/
# Create 3 xls files inside current directory
touch 1.xls 2.xls 3.xls

## Create inside "Ex3" a directory "Stuff/" ##
mkdir Stuff

## Copy all text files in Ex3 to "Stuff" ##
cp *.txt Stuff

## Rename one xls file as "a.xls" ##
mv 1.xls a.xls

## Rename one txt file as "atext.txt" ##
mv 1.txt atext.txt

## Rename one txt file as "btext.txt" ##
mv 2.txt btext.txt

### EXERCISE-2 ###
## Create a directory "mydir1" in your present working directory. ##
mkdir mydir1

## Create 4 text-files inside your pwd. ##
touch 1.txt 2.txt 3.txt 4.txt

## Create a copy of "mydir1" inside your pwd. ##
cp -r mydir1 mydir2
  
## Copy the first 2 .txt  files inside the copied folder ##
cp 1.txt 2.txt mydir2

## Remove both directories ##
rm -R mydir1 mydir2
