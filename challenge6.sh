#!/bin/bash


# Script Name:                  Conditionals
# Author:                       Brad Baack
# Date of latest revision:      02/26/2024
# Purpose:                      Use a conditonal to check for a file or dir

# Define an array of names for files or directories you want to check
items_to_check=("file1.txt" "dir1")

# Loop through the array
for item in "${items_to_check[@]}"; do
  # Check if the item is a file
  if [ -f "$item" ]; then
    echo "File $item exists."
  # Check if the item is a directory
  elif [ -d "$item" ]; then
    echo "Directory $item exists."
  # If the item doesn't exist, create it
  else
    # Decide to create a file or directory based on some condition
    # For simplicity, if the name contains ".txt", we assume it's a file
    if [[ "$item" == *.txt ]]; then
      echo "Creating file $item."
      touch "$item" # This command creates a new file
    else
      echo "Creating directory $item."
      mkdir "$item" # This command creates a new directory
    fi
  fi
done
# Array Declaration: This line declares an array named items_to_check containing two elements: file1.txt and dir1. Arrays in Bash allow you to store multiple values in a single variable.
# For Loop: This line starts a for loop that iterates over each element in the items_to_check array. "${items_to_check[@]}" is the syntax to access all elements of the array. item is a temporary variable that holds the current element of the array being processed in each iteration of the loop.
# Conditional Statement (if): This line checks if the current item ($item) exists in the filesystem. The -e flag is used to check for the existence of a file or directory. The condition is enclosed within [ ] which is a test command in Bash.
# Echo Command: If the item exists, this line outputs a message stating that the item exists. echo is used to display text or variables.
# Else Clause: This part of the conditional statement is executed if the test (if condition) fails, i.e., if the item does not exist.
# Nested Conditional Statement: This line checks if the item variable contains a dot (.), suggesting it is intended to be a file (since directories typically do not contain dots in their names). The == operator is used for pattern matching. The *"."* pattern matches any string containing a dot.
# Touch Command: If the item is determined to be a file (because it contains a dot), this line creates the file using the touch command. touch can change file timestamps but here is used to create a new file if it doesn't exist.
# Echo Command for File: This line outputs a message indicating that a file was created.
# Else Clause for Directory: This part is executed if the item does not contain a dot, implying it is intended to be a directory.
# Mkdir Command: This command creates a new directory named after the item variable.
# Echo Command for Directory: Outputs a message indicating that a directory was created.
# End of Nested Conditional: This closes the nested if statement that checks whether the item is a file or directory.
# End of Outer Conditional: This closes the main if statement that checks for the existence of the item.