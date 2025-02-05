#!/bin/bash

# Check correct arguments
if [ "$#" -ne 3 ]; then
	echo "Usage: $0 opcion sourcePath backupPath"
	exit 1
fi

#Parameters
opc="$1"
sourcePath="$2"
backupPath="$3"

# Check if source and backup are the same
if [ "$sourcePath" == "$backupPath"  ]; then
	echo "Source and backup paths cannot be the same"
	exit1
fi

# Create backup directory if it doesnt exist
if [ ! -d "$backupPath"  ]; then
	mkdir -p "$backupPath"
fi

# Copy the directory to backup
if [ "$opc" == 1 ]; then
	cp -r "$sourcePath"/* "$backupPath"
	echo "Backup from $sourcePath to $backupPath"
elif [ "$opc" == 2 ]; then
	cp -r "$sourcePath" "$backupPath"
	echo "Backup the file $sourcePath to $backupPath"
else
	echo "Backup is not complete"
fi
