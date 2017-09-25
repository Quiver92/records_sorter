#!/bin/bash

##
DST_DIR=/mnt/dane/shared_files/10.0.0.219/
TODAY=$(date +%F)
mkdir -p $DST_DIR

cd /mnt/dane/shared_files/10.0.0.219_compressed/

find . -type f | while read FILE 
do
	DATE=$(ls --full-time "$FILE" | awk '{print $6}')
	if [[ $DATE == $TODAY ]]
	then echo "today"
	else
	DIR=$DST_DIR$DATE
	mkdir -p $DIR 
	mv $FILE $DIR
	fi		
done
