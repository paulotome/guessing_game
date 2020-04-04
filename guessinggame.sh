#!/usr/bin/env bash
count_files () {
    count=$(find . -maxdepth 1 ! -path . | wc -l)
}
count_files
read -rp "How many files are there in the current directory? " guess
if ! [[ "$guess" =~ ^[0-9]+$ ]]
then
    echo "Sorry integers only"
    exit 1
fi
until [ "$count" -eq "$guess" ];
do
    if [ "$count" -gt "$guess" ]
    then
	read -rp "Your guess is too low! Try again " guess
	if ! [[ "$guess" =~ ^[0-9]+$ ]]
	then
	    echo "Sorry integers only"
	    exit 1
	fi
    else
	read -rp "Your guess is too high! Try again " guess
	if ! [[ "$guess" =~ ^[0-9]+$ ]]
	then
	    echo "Sorry integers only"
	    exit 1
	fi
    fi
done
echo "Congratulations!! Your guess is correct!"
exit 0
