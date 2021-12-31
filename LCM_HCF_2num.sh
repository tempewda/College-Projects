#! /usr/bin/bash
# shell script to find the LCM & HCF of two numbers

echo Enter 2 numbers:
read num1
read num2
small=0
hcf=0

#find the smaller number
if [ $num1 -lt $num2 ]
then
    small=$num1
else
    small=$num2
fi

#calculate HCF
for (( counter=1; counter<=small; counter++ ))
do
    if [[ $(( $num1%$counter )) -eq 0 && $(( $num2%$counter )) -eq 0 ]]
    then
        hcf=$counter
    fi
done

#LCM x HCF = Product of two numbers
product=$(( $num1*$num2 ))
lcm=$(( $product/$hcf ))
echo LCM: $lcm
echo HCF: $hcf
