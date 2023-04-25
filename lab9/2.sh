echo -n "Enter a positive integer: "
read num

# finding prime factors
for (( i=2; i<=num; i++ ))
do
  while [ $((num%i)) -eq 0 ]
  do
    echo $i
    num=$((num/i))
  done
done

# if num is still greater than 2, then it is also a prime factor
if [ $num -gt 2 ]
then
  echo $num
fi
