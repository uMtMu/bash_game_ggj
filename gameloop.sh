#!/bin/bash


while true
do
	echo "I am running..."
	output="none"
	read -t 0.1 -n 1 key
	if [[ $key = q ]]
		then
			output="up"
	fi
	if [[ $key = a ]]
		then
			output="down"
	fi
	clear
	echo $output
done
