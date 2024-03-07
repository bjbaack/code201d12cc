#!/bin/bash

# Read two numbers from the user
echo "Enter the first number:"
read num1
echo "Enter the second number:"
read num2

# Read the action from the user
echo "Enter the action (add, subtract, multiply, divide):"
read action

# Perform the calculation based on the action
case $action in
    add)
        result=$(echo "$num1 + $num2" | bc)
        ;;
    subtract)
        result=$(echo "$num1 - $num2" | bc)
        ;;
    multiply)
        result=$(echo "$num1 * $num2" | bc)
        ;;
    divide)
        if [ $num2 -eq 0 ]; then
            echo "Division by zero is not allowed."
            exit 1
        else
            result=$(echo "scale=2; $num1 / $num2" | bc)
        fi
        ;;
    *)
        echo "Invalid action. Please use add, subtract, multiply, or divide."
        exit 1
        ;;
esac

# Display the result
echo "Result: $result"
