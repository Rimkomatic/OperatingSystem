#!/bin/bash

# Initializing an array
my_array=(1 2 3 4)

# Method 1: Displaying all elements at once using "${array[@]}"
echo "Method 1: Displaying all elements at once using \"\${array[@]}\":"
echo "${my_array[@]}"

# Method 2: Displaying elements one by one using a for loop
echo "Method 2: Displaying elements one by one using a for loop:"
for element in "${my_array[@]}"
do
    echo "$element"
done

# Method 3: Displaying elements with their index using a for loop
echo "Method 3: Displaying elements with their index using a for loop:"
for index in "${!my_array[@]}"
do
    echo "Element at index $index: ${my_array[$index]}"
done

# Method 4: Displaying elements in reverse order using tac and a for loop
echo "Method 4: Displaying elements in reverse order using tac and a for loop:"
for element in $(tac <<< "${my_array[@]}")
do
    echo "$element"
done
