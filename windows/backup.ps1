# Make back up of file or files from source directory to backup directory
# Parameters
Param (
    [Int]$opc, #= 1 or 0,
    [string]$sourcePath, #= "C:\path\to\source\directory",
    [string]$backupPath #= "C:\path\to\backup\directory"
)

# Check if source and backup paths are the same
if ($sourcePath -eq $backupPath) {
    Write-Output "Source and backup paths cannot be the same."
    exit
}

# Create backup directory if it doesn't exist
if (-not (Test-Path $backupPath)) {
    New-Item -ItemType Directory -Path $backupPath | Out-Null
}

if ($opc -eq 1){
    # Copy files from source to backup directory
    Copy-Item -Path $sourcePath\* -Destination $backupPath -Recurse -Force
    Write-Output "Backup completed from $sourcePath to $backupPath"
    } elseif ($opc -eq 0) {
    # Copy file from source to backup directory
    Copy-Item -Path $sourcePath -Destination $backupPath -Recurse -Force
    Write-Output "Backup completed from $sourcePath to $backupPath"
    } else {
    Write-Output "Invalid option. Please enter 1 or 0." 
    Write-Output "Backup is not completed." 
}