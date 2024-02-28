#!/bin/bash


# Script Name:                  Systemm Informatin
# Author:                       Brad Baack
# Date of latest revision:      02/27/2024
# Purpose:                      Display system information. 



# Main




#!/bin/bash

# Functions to get hardware information
get_computer_name() {
    echo "$(hostname)" # This is a more reliable way to get the computer name
}

get_cpu_info() {
    lshw -class processor | grep -A 5 "description: CPU"
}

get_ram_info() {
    lshw -class memory | grep -A 3 "description: System Memory"
}

get_display_adapter_info() {
    lshw -class display | grep -A 10 "description: Display"
}

get_network_adapter_info() {
    lshw -class network | grep -A 15 "description: Network"
}

# Main
echo "Evaluating this computer..."
echo "Computer Name: $(get_computer_name)"
echo "CPU: $(get_cpu_info)"
echo "RAM: $(get_ram_info)"
echo "Display Adapter: $(get_display_adapter_info)"
echo "Network Adapter: $(get_network_adapter_info)"
echo "Evaluation complete."

# The get_computer_name function uses the hostname command, which is a reliable method for obtaining the computer's network name.
# Functions get_cpu_info, get_ram_info, get_display_adapter_info, and get_network_adapter_info use lshw with specific class filters to obtain details about the CPU, RAM, display adapter, and network adapter, respectively.
# The grep command is utilized to filter and present the information after the keyword "description" for each class.
# The -A flag in grep is used to print additional lines after the match, which provides more context.
# It's important to run the script with root privileges because lshw requires such privileges to access detailed hardware information.
# The script outputs the information in a readable format, announcing the start and completion of the evaluation.
# Encapsulating the hardware information retrieval in functions provides better organization and reusability within the script.
