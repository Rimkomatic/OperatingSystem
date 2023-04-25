# enter the number of elements
echo "Enter the number of elements:"
read n

# Initialize the array
for ((i=0; i<n; i++))
do
  echo "Enter element $i:"
  read element
  array[$i]=$element
done

# Display the array in reverse order
echo "Array in reverse order:"
for ((i=n-1; i>=0; i--))
do
  echo ${array[$i]}
done
