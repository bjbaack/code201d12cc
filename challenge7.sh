#!/bin/bash


# Script Name:                  Systemm Informatin
# Author:                       Brad Baack
# Date of latest revision:      02/27/2024
# Purpose:                      Display system information. 



if [ "$EUID" -ne 0 ]; then
  echo "Please run as root"
  exit
fi

echo "Computer Name:"
lshw | grep -m1 "description:" | awk '{print $2}'


echo -e "CPU Information:"
lshw -class processor | grep "product\|vendor\|physical id\|bus info\|width"


echo -e "RAM Information:"
lshw -class memory | grep "description\|physical id\|size"


echo -e "Display Adapter Information:"
lshw -class display | grep "description\|product\|vendor\|physical id\|bus info\|width\|clock\|capabilities\|configuration\|resources"


echo -e "Network Adapter Information:"
lshw -class network | grep "description\|product\|vendor\|physical id\|bus info\|logical name\|version\|serial\|size\|capacity\|width\|clock\|capabilities\|configuration\|resources"

# The first if statement checks if the script is run as root. If not, it prompts the user to run the script as root and exits.
# echo "Computer Name:" prints a header for the computer name section to the console.
# lshw | grep -m1 "description:" | awk '{print $2}' uses lshw to list hardware, then grep to filter the description of the computer, and awk to print the name.
# echo -e "\nCPU Information:" prints a header for the CPU information section to the console.
# lshw -class processor | grep "product\|vendor\|physical id\|bus info\|width" lists details about the CPU, including product name, vendor, physical ID, bus information, and architecture width.
# echo -e "\nRAM Information:" prints a header for the RAM information section to the console.
# lshw -class memory | grep "description\|physical id\|size" lists details about the memory, including its description, physical ID, and size.