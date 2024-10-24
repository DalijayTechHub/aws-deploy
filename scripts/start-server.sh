#!/bin/bash

echo "Starting the application..."

# Navigate to the application directory
cd /var/www/myapp || exit

# Install dependencies if needed
npm install

# Start the application
npm start &

echo "Application started successfully."
