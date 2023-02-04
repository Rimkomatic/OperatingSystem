read -p "Enter the number: " num

if [ $num -eq 0 ]
then
  echo "The number is equal to Zero"
elif [ $num -gt 0 ]
then
  echo "The number is +ve"
else
  echo "The number is -ve"
fi

