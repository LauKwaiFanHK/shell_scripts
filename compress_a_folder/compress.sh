#!/bin/bash

# Make this script executable 
chmod +x "$0"

# Path to be compressed
FOLDER_PATH="/home/fan/Desktop/my_repos/shell-scripts/helloWorld"

# Path of destination directory of the compressed zip file
DESTINATION_PATH="/home/fan/Desktop/my_repos/shell-scripts/"

# Create current timestamp
TIMESTAMP=$(date +"%Y%m%d_%H%M%S")

# Name of the zip file
ZIP_FILE_NAME="helloWorld_${TIMESTAMP}.zip"

# Compress the folder into a zip file

zip -r "${DESTINATION_PATH}/${ZIP_FILE_NAME}" "${FOLDER_PATH}"

echo 'Compress successufully!'
