#!/bin/bash


# Script Name:                  Conditionals
# Author:                       Brad Baack
# Date of latest revision:      02/26/2024
# Purpose:                      Use a conditonal to check for a file or dir

# Define an array
files=(file1.txt file2.txt file3.txt file4.txt)

# For loop iterates through each value in array
for file in "${files[@]}"
do
  # If conditional, checks if the file exists
  if [ -f "$file" ]; then
    # If file exists then print out the following statement.
    echo "$file exists."
  # If file does not exist, create it.
  else
    echo "$file does not exist."
    touch $file
    echo "The $file has been created."
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