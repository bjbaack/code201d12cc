#!/bin/bash

# Script Name:                  Challenge 4
# Author:                       Brad Baack
# Date of latest revision:      02/22/2024
# Purpose:                      Create Directories and put them in array



# Declaration of variables
directories=("dir1" "dir2" "dir3" "dir4")               

# Declaration of functions
create_dir() {
  local dir_name=$1  
  mkdir -p "$dir_name"  
  touch "${dir_name}/test.txt" 
}
# Main
create_dir "${directories[0]}"
create_dir "${directories[1]}"
create_dir "${directories[2]}"
create_dir "${directories[3]}"
# End