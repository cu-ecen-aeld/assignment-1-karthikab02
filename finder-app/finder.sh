#!/bin/bash

if [ $# -ne 2 ]
then

	echo "Error: Two arguments required: <filesdir> <searchstr>"
	exit 1
else

filesdir="$1"
searchstr="$2"

	if [ ! -d "$filesdir" ]
	then
		echo "Error: $filesdir is not a directory"
		exit 1
	else
		x=$(find "$filesdir" -type f | wc -l)	
		y=$(grep -r "$searchstr" "$filesdir" | wc -l)
		
		echo "The number of files are $x and the number of matching lines are $y"
	
	fi
	
fi
