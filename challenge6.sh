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
# Array Declaration: Declares an array named files with four elements, each being the name of a text file.
# For Loop: Begins a loop that iterates over each element in the files array.
# Conditional Statement (if): Checks if the current element in the loop (a file name) corresponds to an actual file on the filesystem.
# Echo Command: Outputs a message to the terminal stating that the current file exists.
# Else Clause: Specifies the block of code to execute if the if condition is not met (the file does not exist).
# Echo Command for Non-Existence: Outputs a message indicating that the current file does not exist.
# Touch Command: Creates a new file with the name specified in the file variable.
# Echo Command for Creation: Outputs a message confirming the creation of the file.
