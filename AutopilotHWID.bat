@ECHO ON

SET PSScript=D:\Get-WindowsAutopilotInfo.ps1

SET PowerShellDir=C:\Windows\System32\WindowsPowerShell\v1.0
CD /D "%PowerShellDir%"
Powershell -ExecutionPolicy Bypass -Command "& '%PSScript%' -OutputFile D:\HWID.csv -GroupTag PROD-Windows -Append"
EXIT /B
