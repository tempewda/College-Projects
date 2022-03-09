#! /usr/bin/bash
# shell script to arrange numbers using bubble sort

echo Enter the elements of array:
read -a array
length=${#array[@]}

for (( counter=0; counter<length; ++counter ))
do
    swapped=0
    for (( index=0; index<(length-counter-1); ++index ))
    do
        if (( ${array[$index]} > ${array[$index+1]} ))
        then
            swap_num=${array[$index]}
            array[$index]=${array[$index+1]}
            array[$index+1]=$swap_num
            swapped=1
        fi
    done
    if (( swapped == 0 ))
        then
            break
        fi
done

echo Sorted Array:
echo -e "${array[@]} \c"
echo
