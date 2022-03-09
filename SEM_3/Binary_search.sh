#! /usr/bin/bash
# shell script to search an element using binary search

echo Enter the elements of array in ascending order: 
read -a arr
length=${#arr[@]}
echo -e "Enter search element: \c"
read num

found=0
start=0             #starting index
end=$(( length-1 )) #ending index

while [ $start -le $end ]
do  
    mid=$(( ($start+$end)/2 ))
    if [ ${arr[mid]} -eq $num ]
    then    
        echo $num found at location $(( mid+1 ))
        found=1
        break
    elif [ ${arr[mid]} -gt $num ]
    then
        end=$(( mid-1 ))
    else
        start=$(( mid+1 ))
    fi
done

if [ $found -eq 0 ]  #element not found
then
    echo Element not found
fi

