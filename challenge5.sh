#!/bin/bash

# Script Name:                  Loops
# Author:                       Brad Baack
# Date of latest revision:      02/23/2024
# Purpose:                      Use a loop to terminate a pid



# Declaration of variables

# Function to display running processes

show_processes() {
    echo "Displaying running processes:"
    ps -ef 
}

# Main loop
while true; do
    show_processes
    echo "Enter PID to kill (or press Ctrl + C to exit):"
    read pid
    kill $pid

    # Wait for user input before continuing the loop
    echo "Press any key to continue or Ctrl + C to exit."
    read -n 1 -s  # -n 1: wait for a single character; -s: silent, don't echo input
done