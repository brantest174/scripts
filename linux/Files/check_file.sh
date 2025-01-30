#!/bin/bash
#Check if a file exist
#Get the filename from the argument
filename=$1
PWD=$(pwd)

#Check
if [ -e "$filename" ]; then
	echo "The current directory is: $PWD"
	echo "The file '$filename'  exists"
else
	echo "The file '$filename' does not exists"
fi
