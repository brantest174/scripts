#/!bin/bash

echo "System Information"

# Get OS Info
os=$(uname -o)
echo "Operative System: $os"

# Get distribution information

if [ -f /etc/os-release ]; then
	. /etc/os-release
	echo "Dsitribution: $NAME $VERSION"
fi

# GET hostname
hostname=$(hostname)
echo "Hostname: $hostname"

# GET current user
user=$(whoami)
echo "Current user: $user"

# Get system uptime
uptime=$(uptime -p)
echo "System Uptime: $uptime"

# GET total physical memory
memory=$(free -h | grep Mem | awk '{print $2}')
echo "Total Physical Memory: $memory"

# GET processor info
proces=$(lscpu | grep "Model name" | awk -F: '{print $2}' | xargs)
echo "Processor: $proces"

# GET IP address
ipaddress=$(hostname -I | awk '{print $1}')
echo "IP Address: $ipaddress"
