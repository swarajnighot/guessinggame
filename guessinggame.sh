#!/usr/bin/env bash
# File: guessinggame.sh
# Peer graded assignment for Coursera - The Unix Workbench

count=$(ls -1 | wc -l)

function correct_guess {        # The required one function.
    if [[ $1 -lt $2 ]]          # The required one if statement.
    then
        echo "Too low!"
    elif [[ $1 -gt $2 ]]
    then
        echo "Too high!"
    else
        echo ""
        echo "Congratualations! Your Guess is correct! Well Done!"
    fi
}

while [[ $count -ne $guess ]]    # The required one loop.
do
    read -p "Guess how many files are in the current directory? " guess
    # echo "You entered: $guess"
    echo $(correct_guess $guess $count)
    echo ""
done
