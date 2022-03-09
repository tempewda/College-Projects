#! /usr/bin/bash
# Program to print all Prime numbers between 1 and 100

# Function to check if a number is Prime or not
# takes a number as input
# returns 1 if the number is Prime, 0 otherwise
is_Prime()
{
    num=$1
    factors=0

    for (( i=1; i<=num; i++ ))
    do
        if(( $(( num%i )) == 0 ))
        then
            (( factors++ ))
        fi
    done

    if(( $factors==2 ))
    then
        return 1
    else
        return 0
    fi
}

# Main Script
for (( n=1; n<101; n++ ))
    do
        is_Prime n
        result=$?

        if(( $result == 1 ))
        then
            echo -e $n "\c"
        fi
    done