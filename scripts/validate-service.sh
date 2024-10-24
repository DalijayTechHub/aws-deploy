#!/bin/bash

echo "Starting validation before installation..."

# Check if the application directory exists
if [ ! -d "/var/www/myapp" ]; then
  echo "Directory /var/www/myapp does not exist. Creating..."
  mkdir -p /var/www/myapp
else
  echo "Directory /var/www/myapp exists."
fi

echo "Validation completed successfully."
