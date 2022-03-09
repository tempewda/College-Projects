#! /usr/bin/bash
# Program to check if a number is Prime or not

echo Enter a number: 
read num
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
    echo Prime Number
else
    echo Not Prime Number
fi
