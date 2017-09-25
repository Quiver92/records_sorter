#!/bin/bash
cd /mnt/dane/shared_files/10.0.0.219/

find . -type d | while read DIR
do
	rmdir $DIR
done
