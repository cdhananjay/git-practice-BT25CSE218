#!/bin/bash
# calculator-v2.sh - Enhanced calculator with history

history_file="/tmp/calc_history.txt"
> "$history_file"

echo "=============================="
echo "  Enhanced Calculator v2"
echo "=============================="

while true; do
    echo ""
    echo "1. Calculate"
    echo "2. View history"
    echo "3. Exit"
    read -p "Choose option: " opt

    case $opt in
        1)
            read -p "Enter first number: " num1
            read -p "Enter operator (+, -, *, /): " op
            read -p "Enter second number: " num2

            if ! [[ "$num1" =~ ^-?[0-9]+\.?[0-9]*$ ]] || ! [[ "$num2" =~ ^-?[0-9]+\.?[0-9]*$ ]]; then
                echo "Error: Invalid numbers."
                continue
            fi

            case $op in
                +) result=$(echo "$num1 + $num2" | bc) ;;
                -) result=$(echo "$num1 - $num2" | bc) ;;
                \*) result=$(echo "$num1 * $num2" | bc) ;;
                /)
                    if [ "$num2" = "0" ]; then
                        echo "Error: Division by zero!"
                        continue
                    fi
                    result=$(echo "scale=2; $num1 / $num2" | bc)
                    ;;
                *)
                    echo "Error: Invalid operator."
                    continue
                    ;;
            esac
            echo "Result: $num1 $op $num2 = $result"
            echo "$num1 $op $num2 = $result" >> "$history_file"
            ;;
        2)
            echo "--- Calculation History ---"
            if [ -s "$history_file" ]; then
                cat "$history_file"
            else
                echo "(no calculations yet)"
            fi
            ;;
        3)
            echo "Goodbye!"
            exit 0
            ;;
        *)
            echo "Invalid option."
            ;;
    esac
done
