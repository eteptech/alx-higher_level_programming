#!/bin/bash

url="$1"

response=$(curl -s -o /dev/null -w "%{http_code}" $url)

if [ $response -eq 200 ]; then
  curl -s $url
  echo
else
  echo "Response status: $response" >&2
fi
