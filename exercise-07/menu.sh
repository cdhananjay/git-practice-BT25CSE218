#!/bin/bash
# menu.sh - Interactive menu with multiple options

while true; do
    echo ""
    echo "=============================="
    echo "       MAIN MENU"
    echo "=============================="
    echo "1. Greet the user"
    echo "2. Add two integers"
    echo "3. Check even or odd"
    echo "4. Exit"
    echo "=============================="
    read -p "Enter your choice (1-4): " choice

    case $choice in
        1)
            read -p "Enter your name: " name
            if [ -z "$name" ]; then
                echo "Hello, stranger!"
            else
                echo "Hello, $name! Welcome!"
            fi
            ;;
        2)
            read -p "Enter first integer: " a
            read -p "Enter second integer: " b
            if [[ "$a" =~ ^-?[0-9]+$ ]] && [[ "$b" =~ ^-?[0-9]+$ ]]; then
                sum=$((a + b))
                echo "Sum of $a and $b = $sum"
            else
                echo "Error: Please enter valid integers."
            fi
            ;;
        3)
            read -p "Enter an integer: " num
            if [[ "$num" =~ ^-?[0-9]+$ ]]; then
                if [ $((num % 2)) -eq 0 ]; then
                    echo "$num is even."
                else
                    echo "$num is odd."
                fi
            else
                echo "Error: Please enter a valid integer."
            fi
            ;;
        4)
            echo "Goodbye!"
            exit 0
            ;;
        *)
            echo "Invalid choice. Please select 1-4."
            ;;
    esac
done
