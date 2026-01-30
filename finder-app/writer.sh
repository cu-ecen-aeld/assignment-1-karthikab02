#!/bin/bash

if [ $# -ne 2 ]
then

	echo "Error: Two arguments required: <writefile> <writestr>"
	exit 1
else

writefile="$1"
writestr="$2"

	if mkdir -p "$(dirname "$writefile")"
	then
		echo "$writestr" > "$writefile"
	else
		echo "Error: Failed to create directory"
		exit 1
	fi
fi
