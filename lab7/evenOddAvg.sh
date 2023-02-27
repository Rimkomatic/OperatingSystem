read -p "Enter how many number you want to enter: " n
count=0

evenSum=0
oddSum=0
evenNum=0
oddNum=0

while [ $count -lt $n ]
do
  read -p "Enter the next number:" num
  if [ `expr $num % 2 ` -eq 0 ]
  then 
    evenSum=`expr $num + $evenSum `
    evenNum=`expr $evenNum + 1 `
  else
    oddSum=`expr $num + $oddSum `
    oddNum=`expr $oddNum + 1 `
  fi
  count=`expr $count + 1 `
done


if [ $evenNum -gt 0 ]
then 
  evenAvg=`expr $evenSum / $evenNum `
  echo "The even Average is $evenAvg"
fi

if [ $oddNum -gt 0 ]
then
  oddAvg=`expr $oddSum / $oddNum `
  echo "The odd Average is $oddAvg"
fi

