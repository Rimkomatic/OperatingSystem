read -p "Enter the number to check: " num
mod=`expr $num % 2`

if [ $mod -eq 0 ]
then 
  echo "The number is even"
else
  echo "The number is odd"
fi
