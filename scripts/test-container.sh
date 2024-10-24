#!/bin/bash

echo "Running post-deployment tests..."

# Check if the application is running by sending a request to the local service
HTTP_RESPONSE=$(curl -s -o /dev/null -w "%{http_code}" http://localhost:80)

if [ "$HTTP_RESPONSE" -eq 200 ]; then
  echo "Application is running successfully. HTTP response code: $HTTP_RESPONSE"
  exit 0
else
  echo "Application test failed. HTTP response code: $HTTP_RESPONSE"
  exit 1
fi
