#! /usr/bin/bash
# shell script to display the Fibonacci series

echo -e "Enter the number of terms: \c"
read terms

a=0
b=1
c=1

for (( counter=1; counter<=terms; counter++ ))
do
    echo -e $a "\c"
    a=$b
    b=$c
    c=$(( $a+$b ))
done
echo
