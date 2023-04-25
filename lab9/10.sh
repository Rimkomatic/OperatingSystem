#!/bin/bash

my_array=( 1 2 3 4 5 )


for (( i=0; i<${#my_array[@]}; i+=2 ))
do
    if (( i == ${#my_array[@]} - 1 ))
    then
        temp=${my_array[0]}
        my_array[0]=${my_array[-1]}
        my_array[-1]=$temp
    else

        temp=${my_array[i]}
        my_array[i]=${my_array[i+1]}
        my_array[i+1]=$temp
    fi
done

echo "The swapped array is:"
echo "${my_array[@]}"
