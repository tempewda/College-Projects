#! /usr/bin/bash
# Program to check if a number is Armstrong or not

echo Enter a number:
read num
remaining_digits=$num

while (( $remaining_digits>0 ))
do
    digit=$(( remaining_digits%10 ))
    remaining_digits=$(( remaining_digits/10 ))
    cube=$(( digit*digit*digit ))
    sum_cubes_digits=$(( sum_cubes_digits+cube ))
done

if(( $sum_cubes_digits == $num ))
then
    echo Armstrong Number
else
    echo not Armstrong Number
fi
