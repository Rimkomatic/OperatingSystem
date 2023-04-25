#!/bin/bash

read -p "Enter the size of the first array: " n
echo "Enter the first array: "

for((i=0;i<n;i++))
do
  read num
  myArr1[$i]=$num
done

read -p "Enter the size of the 2nd array: " m
echo "Enter the array member values: "

for((i=0;i<m;i++))
do
  read num2
  myArr2[$i]=$num2
done


echo "Enter the option: "
read opt

case $opt in
  [1]) resArr=("${myArr1[@]}" "${myArr2[@]}");;
  [2]) for item1 in ${myArr1[@]} ; do
         if [[ $myArr2 =~ "$item1" ]] ; then 
           resArr+=($item1)
         fi
       done;;
esac

echo "The result is" 
echo "${resArr[@]}"
