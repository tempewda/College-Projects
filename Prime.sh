#! /usr/bin/bash
# Program to check if a number is Prime or not

echo Enter a number: 
read num
factors=0

for (( i=2; i<num; i++ ))
do
    if(( $(( num%i )) == 0 ))
    then
        (( factors++ ))
    fi
done

if(( $factors>1 || $num<=1 ))
then
    echo Not Prime Number
else
    echo Prime Number
fi
