#!/bin/bash
# calculator.sh - Simple calculator script for collaboration exercise

echo "=============================="
echo "   Simple Calculator"
echo "=============================="

read -p "Enter first number: " num1
read -p "Enter operator (+, -, *, /): " op
read -p "Enter second number: " num2

if ! [[ "$num1" =~ ^-?[0-9]+\.?[0-9]*$ ]] || ! [[ "$num2" =~ ^-?[0-9]+\.?[0-9]*$ ]]; then
    echo "Error: Please enter valid numbers."
    exit 1
fi

case $op in
    +) result=$(echo "$num1 + $num2" | bc) ;;
    -) result=$(echo "$num1 - $num2" | bc) ;;
    \*) result=$(echo "$num1 * $num2" | bc) ;;
    /)
        if [ "$num2" = "0" ]; then
            echo "Error: Division by zero!"
            exit 1
        fi
        result=$(echo "scale=2; $num1 / $num2" | bc)
        ;;
    *)
        echo "Error: Invalid operator. Use +, -, *, /"
        exit 1
        ;;
esac

echo "Result: $num1 $op $num2 = $result"
