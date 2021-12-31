#! /usr/bin/bash

for (( num=1;num<=10;num++ ))
do
    square_num=$(( num*num ))
    sum=$(( sum + square_num ))
done

echo Sum of squares of 1st 10 natural numbers: $sum
