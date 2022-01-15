#! /usr/bin/bash
# Program to calculate nCr and nPr

# Function to calculate factorial of a number
# takes a number as input
# returns the factorial thru fact variable
factorial ()
{
    num=$1
    fact=1

    for (( i=2; i<=num; i++ ))
    do
        fact=$(( fact * i ))
    done

    return $fact
}


# Main script
read -p "Value of n: " -r n 
read -p "Value of r: " -r r

# Calculating nPr
factorial n 
numerator=$?

factorial n-r
denominator=$?

echo "nPr = $(( numerator/denominator ))"

# Calculating nCr
factorial n 
numerator=$?

factorial r
denominator=$?

factorial n-r
denominator=$(( denominator * $? ))

echo "nCr = $(( numerator/denominator ))"


