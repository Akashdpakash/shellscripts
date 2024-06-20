#!/bin/bash

# Define the API endpoint
API_ENDPOINT="https://api.coindesk.com/v1/bpi/currentprice.json"

# Fetch data from the API
response=$(curl -s $API_ENDPOINT)

# Check if the response is not empty
if [ -n "$response" ]; then
  # Parse and display the JSON data using jq
  echo "$response" | jq .
else
  echo "No data received from the API."
fi
