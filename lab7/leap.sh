read -p "Enter the year: " year
read -p "How many leap year you want: " num


if [ `expr $year % 100 ` -eq 0 ]
then 
  if [ `expr $year % 400 ` -eq 0 ]
  then
    off=0
  else
    off=`expr $year % 400 `
  fi
elif [ `expr $year % 4 ` -eq 0 ]
then
  off=0
else 
  off=`expr $year % 4`
fi

echo "The years are: "

if [ $off -ne 0 ]
then
  year=`expr $year + $off `
  num=`expr $num - 1`
fi

while [ $num -ge 0 ]
do
  echo "$year"
  year=`expr $year + 4 `
  num=`expr $num - 1 `
done
