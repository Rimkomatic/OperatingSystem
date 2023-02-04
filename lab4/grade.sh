read -p "Enter the marks: " mark

echo "Your grade is: "

if [ $mark -ge 90 ]
then 
  echo "O"
elif [ $mark -ge 80 ]
then
  echo "E"
elif [ $mark -ge 70 ]
then
  echo "A"
elif [ $mark -ge 60 ]
then 
  echo "B"
elif [ $mark -ge 50 ]
then
  echo "C"
elif [ $mark -ge 40 ]
then 
  echo "D"
else
  echo "F"
fi

