#!/bin/bash

# Check if a URL is provided
if [ -z "$1" ]; then
  echo "Usage: $0 <URL>"
  exit 1
fi

# Capture the URL from the command line argument
url="$1"

# Use curl to send a request and capture the size of the response body in bytes
response_size=$(curl -sI "$url" | grep -i content-length | awk '{print $2}' | tr -d '\r\n')

# Check if the Content-Length header is present
if [ -z "$response_size" ]; then
  echo "Unable to determine the size of the response body."
else
  echo "Size of the response body: ${response_size} bytes"
fi

