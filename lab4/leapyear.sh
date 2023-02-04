read -p "Enter the year: " year

if [ `expr $year % 100 ` -eq 0 ]
then 
  if [ `expr $year % 400 ` -eq 0 ]
  then
    echo "It is leap year"
  else
    echo "It is not leap year "
  fi
elif [ `expr $year % 4 ` -eq 0 ]
then
  echo "It is leap year"
else 
  echo "It is not leap year"
fi
