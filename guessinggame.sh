#!/usr/bin/env bash
count_files () {
    count=$(find . -maxdepth 1 ! -path . | wc -l)
}
count_files

read -rp "How many files are there in the current directory? " guess
until [[ "$guess" =~ ^[0-9]+$ ]]
do
    if ! [[ "$guess" =~ ^[0-9]+$ ]]
    then
	read -rp "A integer must be supplied! How many files are there in the current directory? " guess
    fi
done
until [ "$count" -eq "$guess" ];
do
    if [ "$count" -gt "$guess" ]
    then
	read -rp "Your guess is too low! Try again " guess
	until [[ "$guess" =~ ^[0-9]+$ ]]
	do
	    if ! [[ "$guess" =~ ^[0-9]+$ ]]
	    then
		read -rp "A integer must be supplied! Try again " guess
	    fi
	done
    else
	read -rp "Your guess is too high! Try again " guess
	until [[ "$guess" =~ ^[0-9]+$ ]]
	do
	    if ! [[ "$guess" =~ ^[0-9]+$ ]]
	    then
		read -rp "A integer must be supplied! Try again " guess
	    fi
	done
    fi
done
echo "Congratulations!! Your guess is correct!"
exit 0
