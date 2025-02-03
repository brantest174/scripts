#Get parameters
Param (
    [String]$Name,
    [Int]$Age
)
    Write-Output "Name: $Name"
    Write-Output "Age: $Age"


#Call the function with parameters
#Example: .\script.ps1 -Name "John" -Age 25