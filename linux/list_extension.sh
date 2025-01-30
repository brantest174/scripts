#!/bin/bash
#List file with specific extension

FILES=$(ls *txt)

for FILE in $FILES 
do
	echo "File are ${FILE}"
done
