#! /usr/bin/bash
# Program to calculate nCr and nPr

# Function to calculate factorial of a number
# takes a number as input $1
# stores the factorial in fact varaible
factorial ()
{
    local num=$1
    local fact=1

    for (( i=2; i<=num; i++ ))
    do
        fact=$(( fact * i ))
    done

    return $fact
}

n=4
m=8
factorial m-n
echo $?

factorial $(( m-n ))
echo $?

# f=$(factorial 3 | $?)
# echo $f
# # Main script
# read -p "Value of n: " n 
# read -p "Value of r: " r

# # Calculating nPr
# factorial n 
# numerator=$?

# factorial $(( n-r )) 
# denominator=$?

# echo "nPr = $(( numerator/denominator ))"

# # Calculating nCr
# factorial n 
# numerator=$?

# factorial $r
# denominator=$?

# factorial $(( n-r )) 
# denominator=$(( denominator * $? ))

# echo "nCr = $(( numerator/denominator ))"


