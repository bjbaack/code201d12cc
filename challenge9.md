# Script Name:                  Hello World
# Author:                       Brad Baack
# Date of latest revision:      02/22/2024
# Purpose:                      Print Errors to screen / file


Get-EventLog -LogName System -After (Get-Date).AddDays(-1) | Out-File "$env:USERPROFILE\Desktop\last_24.txt"


Get-EventLog -LogName System -EntryType Error | Out-File "$env:USERPROFILE\Desktop\errors.txt"

Get-EventLog -LogName System | Where-Object {$_.EventID -eq 16}

Get-EventLog -LogName System -Newest 20

Get-EventLog -LogName System -Newest 500 | Select-Object Source -Unique | Format-Table -Wrap -AutoSize


#Sources
https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.management/get-eventlog?view=powershell-5.1
