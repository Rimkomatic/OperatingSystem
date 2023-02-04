read -p "Enter the Number: " num


if [ `expr $num / 1000 ` -gt 0 ]
then 
  echo "The number is 4 dig"
elif [ `expr $num / 100 ` -gt 0 ]
then 
  echo "Number is 3 dig"
elif [ `expr $num / 10 ` -gt 0 ]
then 
  echo "number is 2 dig"
else
  echo "Numbr is 1 dig"
fi
