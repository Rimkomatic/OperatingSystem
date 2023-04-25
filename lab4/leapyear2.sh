read -p "Enter thee year: " year

if [ `expr $year % 4 ` -eq 0 ]
then 
  if [ `expr $year % 100 ` -eq 0 ]
  then
    
    if [ `expr $year % 400 ` -eq 0 ]
    then
      echo "Leap Year "
    else
      echo "Not Leap year"
    fi
  else
    echo "Leap year"
  fi
else
  echo "Not Leap Year"
fi

