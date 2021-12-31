#! /usr/bin/bash
# shell script to search an element using linear search

echo "Enter the elements of array: "
read -a arr
length=${#arr[@]}
echo -e "Enter search element: \c"
read num
found=0

for (( index=0; index<length; index++ ))
do
    if [ ${arr[index]} -eq $num ]
    then
        echo $num found at location $(( $index+1 ))
        found=1
        break
    fi
done

if [ $found -eq 0 ]      #element not found
then
    echo Element not found
fi
