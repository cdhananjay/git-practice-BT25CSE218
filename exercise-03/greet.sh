#!/bin/bash
# greet.sh - Greeting script with input validation
# Version 2: handles empty input

read -p "Enter your name: " name

if [ -z "$name" ]; then
    echo "Hello, stranger! Please provide your name next time."
else
    echo "Hello, $name! Welcome to Git Lab."
fi
