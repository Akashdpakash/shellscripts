#!/bin/bash

# Define source file and destination directory
source_file="/tmp/hi.txt"
dest_directory="/tmp/dir1"
log_file="/var/log/file.log"

# Check if source file exists
if [ -f "$source_file" ]; then
    # File exists, so copy it to the destination directory
    cp "$source_file" "$dest_directory"
    echo "$(date) - File $source_file copied to $dest_directory" >> "$log_file"
else
    # File does not exist, so log an error
    echo "$(date) - ERROR: File $source_file does not exist. Unable to copy." >> "$log_file"
fi
