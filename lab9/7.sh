echo "Enter the number of elements: "
read n

my_array=()


for ((i=0;i<$n;i++))
do
  echo "Enter element $((i+1)): "
  read element
  my_array+=($element)
done


odd_array=()
even_array=()


for element in ${my_array[@]}
do
  if [ $((element%2)) -eq 0 ]
  then
    even_array+=($element)
  else
    odd_array+=($element)
  fi
done


new_arr=("${odd_array[@]}" "${even_array[@]}")

echo "Rearranged array:"
echo "${new_arr[@]}"