echo "Enter the number of elements: "
read n

# initialize an empty array
my_array=()

# loop to input n elements to the array
for ((i=0;i<$n;i++))
do
  echo "Enter element $((i+1)): "
  read element
  my_array+=($element)
done

# reverse the array in place
for ((i=0;i<${#my_array[@]}/2;i++))
do
  temp=${my_array[i]}
  my_array[i]=${my_array[${#my_array[@]}-i-1]}
  my_array[${#my_array[@]}-i-1]=$temp
done

# display the reversed array
echo "Reversed array:"
echo "${my_array[@]}"
