#!/bin/bash

# Define the CSV file
CSV_FILE="/root/test/users.csv"

# Check if the CSV file exists
if [ ! -f "$CSV_FILE" ]; then
  echo "CSV file not found!"
  exit 1
fi

# Read and process the CSV file
awk -F, 'NR > 1 && ($3 == "Finance" || $3 == "IT") {print $1}' "$CSV_FILE"
