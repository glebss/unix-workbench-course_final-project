#!/bin/bash
needed_var=$(ls -l | wc -l)
let needed_var=$needed_var-1
read -p "please try to guess how many files are in the folder: " var 


while [[ $var -ne $needed_var ]]
do
	if [[ $var -gt $needed_var ]]
	then
		read -p "your number is too high. please try another one: " var
	else
		read -p "your number is too low. please try another one: " var
	fi
done

echo "congratulations!!! your number is correct!"

