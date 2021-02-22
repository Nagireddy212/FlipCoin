#!/bin/bash -x
random=$(( RANDOM%2 ))
if [ $random -eq 0 ]
then
	echo "Heads"
else
	echo "Trails"
fi
