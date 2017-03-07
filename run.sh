#!/bin/bash
#tvservice -o
#tvservice -p
while true; do
	for FILENAME in $(ls -1 *.mp4 *.MOV)
	do
		omxplayer --blank $FILENAME
	done
done
