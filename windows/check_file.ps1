#Check if a file exists in PowerShell
Param (
    [string]$path
)
#$path = "C:\path\to\your\file.txt" or file.ext
$path1 = Get-Location

if (Test-Path $path) {
    Write-Output "Current directory path: $path1"
    Write-Output "File exists -> $path "
} else {
    Write-Output "File does not exist."
}