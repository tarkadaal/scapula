#!/bin/bash
#tvservice -o
#tvservice -p
while true; do
	for FILENAME in $(ls -t1 *.mp4 *.MOV *.jpg)
	do
		if [ ${file: -4} == ".jpg" ]]
		then
			fbi -t 5 -1 -noverbose $FILENAME
		else
			omxplayer --blank $FILENAME
		fi
	done
done
