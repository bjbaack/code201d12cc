BASH Outline script

#!/bin/bash

# Script Name:                  Domain Analyzer
# Author:                       Brad Baack
# Date of latest revision:      03/06/2024
# Purpose:                      



read -p "Enter a domain: " domain

echo -e "\nWHOIS Information:"
whois $domain

echo -e "\nDIG Information:"
dig $domain

echo -e "\nHOST Information:"
host $domain

echo -e "\nNSLOOKUP Information:"
nslookup $domain




# End
# read -p "Enter a domain: " domain: This line prompts the user to input a domain name and stores the input in the variable domain.
# echo -e "\nWHOIS Information:": This line prints a message indicating that WHOIS information will be displayed. The -e flag allows interpretation of backslash escapes, and \n adds a newline for better formatting.
# whois $domain: This line executes the whois command with the domain name stored in the domain variable, retrieving information about the domain registration.
# echo -e "\nDIG Information:": This line prints a message indicating that DIG information will be displayed.
# dig $domain: This line executes the dig command with the domain name stored in the domain variable, providing DNS-related information about the domain.
# echo -e "\nHOST Information:": This line prints a message indicating that HOST information will be displayed.
# host $domain: This line executes the host command with the domain name stored in the domain variable, performing DNS lookups for the domain.
# echo -e "\nNSLOOKUP Information:": This line prints a message indicating that NSLOOKUP information will be displayed.
# nslookup $domain: This line executes the nslookup command with the domain name stored in the domain variable, performing DNS lookups for the domain.
	
