#Check if a file exists in PowerShell
Param (
    [string]$path
)
#$path = "C:\path\to\your\file.txt" or file.ext

if (Test-Path $path) {
    Write-Output "File exists."
} else {
    Write-Output "File does not exist."
}