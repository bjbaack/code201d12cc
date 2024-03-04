# Script Name:                  Kill processes
# Author:                       Brad Baack
# Date of latest revision:      03/01/2024
# Purpose:                      Kill process in powershell.


Get-Process | Sort-Object CPU -Descending | Format-Table -AutoSize

Get-Process | Sort-Object Id -Descending | Format-Table -AutoSize

Get-Process | Sort-Object WorkingSet -Descending | Select-Object -First 5 | Format-Table -AutoSize

Start-Process "chrome.exe" 

Get-Process notepad | Stop-Process

Stop-Process -Id 1234 -Force



### Resources
https://canvas.instructure.com/courses/8599639/assignments/43668542?module_item_id=101343838


