#!/bin/sh

#Download all of the files --content-disposition respects the file extension. 
#The file would normally be downloaded without an exention.
find . -name '*.txt' -execdir wget --content-disposition -i {} \;

#Unzip the files and delete only successfull unzips
#Overwrite same files (license files)
find . -name '*.zip' -execdir unzip -o {} \; -delete

#Remove all zip files
#find . -name '*.zip' -execdir rm {} \;
