#!/usr/bin/env bash
# File: guessinggame.sh

count=$(\ls -l . | grep -Ec '^-')

function correct_guess {
    if [[ $1 -lt $2 ]]
    then
	echo "Too low!"
    elif [[ $1 -gt $2 ]]
    then
	echo "Too high!"
    else
	echo ""
	echo "Congratulations! You guessed right!"
    fi
}

while [[ $count -ne $guess ]]
do
    read -p "How many files are there in the current directory? " guess
    echo $(correct_guess $guess $count)
    echo ""
done
