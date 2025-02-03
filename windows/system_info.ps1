# Display System Information
Write-Output "System Information:"

# Get OS information
$os = Get-CimInstance -ClassName Win32_OperatingSystem
Write-Output "Operating System: $($os.Caption) $($os.Version)"

# Get computer name
$computerName = $env:COMPUTERNAME
Write-Output "Computer Name: $computerName"

# Get user name
$userName = $env:USERNAME
Write-Output "User Name: $userName"

# Get system uptime
$uptime = (Get-CimInstance -ClassName Win32_OperatingSystem).LastBootUpTime
Write-Output "System Uptime: $((Get-Date) - $uptime)"

# Get total physical memory
$memory = Get-CimInstance -ClassName Win32_ComputerSystem
Write-Output "Total Physical Memory: $([math]::round($memory.TotalPhysicalMemory / 1GB, 2)) GB"

# Get processor information
$processor = Get-CimInstance -ClassName Win32_Processor
Write-Output "Processor: $($processor.Name)"

# Get IP address
$ipAddress = (Get-NetIPAddress -AddressFamily IPv4 | Where-Object { $_.InterfaceAlias -ne "Loopback Pseudo-Interface 1" }).IPAddress
Write-Output "IP Address: $ipAddress"