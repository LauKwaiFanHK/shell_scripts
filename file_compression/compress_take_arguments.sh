#!/bin/bash

# Make this script executable 
chmod +x "$0"

# Path to be compressed
FOLDER_PATH=$1

echo FOLDER_PATH

# Path of destination directory of the compressed zip file
DESTINATION_PATH=$2

echo DESTINATION_PATH

# Create current timestamp
TIMESTAMP=$(date +"%Y%m%d_%H%M%S")

# Name of the zip file
ZIP_FILE_NAME="$3_${TIMESTAMP}.zip"

# Compress the folder into a zip file

zip -r "${DESTINATION_PATH}/${ZIP_FILE_NAME}" "${FOLDER_PATH}"

echo 'Compress successufully!'
