echo "Enter the numbers:"
read a 
read b 
read c

if [ $a -gt $b \-a $a -gt $c ]
then 
  echo "Big is $a"
elif [ $b -gt $a \-a $b -gt $c ]
then 
  echo "Big is $b"
else
  echo "Big is $c"
fi

