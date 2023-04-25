#!/bin/bash

decimal=42


binary=()
for (( i=0; decimal>0; i++ ))
do
    remainder=$(( decimal % 2 ))
    binary[i]=$remainder
    decimal=$(( decimal / 2 ))
done


reversed_binary=()
for (( i=${#binary[@]}-1; i>=0; i-- ))
do
    reversed_binary+=( "${binary[i]}" )
done

echo "The binary representation of 42 is:"
echo "${reversed_binary[@]}"
