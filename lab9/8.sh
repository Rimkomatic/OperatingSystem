#!/bin/bash

# Define the two arrays
array1=( "apple" "banana" "cherry" )
array2=( "date" "elderberry" )

# Concatenate the arrays
result=( "${array1[@]}" "${array2[@]}" )

# Display the concatenated array
echo "The concatenated array is:"
echo "${result[@]}"
