#!/bin/bash
#tvservice -o
#tvservice -p
export PS1=""
clear
while true; do
	for FILENAME in $(ls -t1 *.mp4 *.MOV *.jpg 2> /dev/null)
	do
		if [[ $FILENAME == *.jpg ]]
		then
			fbi -t 7 -1 -noverbose $FILENAME &> /dev/null
		else
			omxplayer --blank $FILENAME &> /dev/null
		fi
	done
done
