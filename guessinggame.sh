#!/usr/bin/env bash
count_files () {
    count=$(find . -maxdepth 1 ! -path . | wc -l)
}
count_files
read -rp "How many files are there in the current directory? " guess
until [ "$count" -eq "$guess" ];
do
    if [ "$count" -gt "$guess" ] ;
    then
	read -rp "Your guess is too low! Try again " guess
    else
	read -rp "Your guess is too high! Try again " guess
    fi
done
echo "Congratulations!! Your guess is correct!"
exit 0
