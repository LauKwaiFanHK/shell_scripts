#!/bin/bash

# This script delete the last 3 zip files located in a folder. 
# Path where the zip files are located
DIRECTORY="../file_compression/"

# Go to this directory
cd $DIRECTORY

# Get a list of zip files, sort by modificaiton time in descending order except the newest 3
ZIP_FILES=$(ls -t *.zip | tail -n +4)

# Delete all files except the latest 3 
for FILE in $ZIP_FILES
do 
  echo "Deleting $FILE"
  rm $FILE
done

echo "Deleting old files successfully. Only the latest 3 are kept!"
