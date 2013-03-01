#!/bin/bash
# this script rename files by regx

ls | grep _@2X | while read line;
do  
	fileName=$(echo $line | sed -E "s/(.*)_@2X.png/\1/")@2x.png
	echo rename $line to $fileName
	mv $line $fileName
done
