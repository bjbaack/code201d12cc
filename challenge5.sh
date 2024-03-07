#!/bin/bash

# Script Name:                  Loops
# Author:                       Brad Baack
# Date of latest revision:      02/23/2024
# Purpose:                      Use a loop to terminate a pid



# Declaration of variables

# Function to display running processes

show_processes() {
    echo "Displaying running processes:"
    top -n 1
}

# Main loop
while true; do
    show_processes
    echo "Enter PID to kill (or press Ctrl + C to exit):"
    read pid
    kill $pid

    echo "Press any key to continue or Ctrl + C to exit."
    read -n 1    
done

# Script Explanation:
#top -n 1 will make top display the processes once and then exit, which can be useful for capturing a snapshot of the system at a particular moment.
#* while true; do initiates an infinite loop. The loop will continue to run until it's explicitly terminated by the user (e.g., by pressing Ctrl+C).
#* Inside the loop, the show_processes function is called first, displaying the list of running processes.
#* echo "Enter PID to kill (or press Ctrl + C to exit):" prompts the user to enter the PID of the process they wish to terminate. The message also informs the user that they can press Ctrl+C to exit the script instead of entering a PID.
#* read pid waits for the user to input a number (the PID of the process they want to kill) and assigns it to the variable pid.
#* kill $pid sends a SIGTERM signal to the process with the specified PID, requesting the process to terminate. If the process can't be terminated with SIGTERM, a stronger signal like SIGKILL (with kill -9 $pid) might be needed, but this is not covered in the script.
#* After attempting to kill the process, the script pauses with echo "Press any key to continue or Ctrl + C to exit." This allows the user time to see any output or errors before the list of processes is displayed again.
#* read -n 1 waits for the user to press any key. The -n 1 option specifies that read should accept a single character of input, so the user doesn't need to press Enter. This effectively creates a pause until the user is ready to continue. 
