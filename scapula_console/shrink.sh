#!/bin/bash
while true; do
	for FILENAME in $(ls -t1 *.jpg *.JPG)
	do
		convert $FILENAME -resize 600x400 ../$FILENAME
        rm $FILENAME
	done
done