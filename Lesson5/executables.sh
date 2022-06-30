#!/bin/bash
for file in /usr/bin*
do
	if [ -x "$file" ]
	then 
		echo $file >> executable.txt
	fi
done

