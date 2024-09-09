#!/bin/bash

# Directory to analyze
DIR=$1

# Check if directory argument is provided
if [ -z "$DIR" ]; then
  echo "Usage: $0 /path/to/directory"
  exit 1
fi

echo "Analyzing disk usage for directory: $DIR"

# List all files and directories in the specified directory
echo "Listing all files and directories in $DIR:"
ls -lh "$DIR"

# Find files larger than 100MB
echo "Finding files larger than 100MB:"
find "$DIR" -type f -size +100M -exec ls -lh {} \;

# Find files older than 180 days
echo "Finding files older than 180 days:"
find "$DIR" -type f -mtime +180 -exec ls -lh {} \;

