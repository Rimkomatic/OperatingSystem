# Input n elements to an array
echo "Enter the number of elements in the array:"
read n

echo "Enter the elements:"
for (( i=0; i<n; i++ ))
do
    read arr[$i]
done

# Copy array elements to another array in reverse order
for (( i=n-1, j=0; i>=0; i--, j++ ))
do
    reverse_arr[$j]=${arr[$i]}
done

# Display the reversed array
echo "Original array: ${arr[@]}"
echo "Reversed array: ${reverse_arr[@]}"
