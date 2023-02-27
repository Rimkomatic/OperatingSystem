echo "Enter the ranges: "
read low
read heigh

i=$low

echo "The perfect number between the range is: "

while [ $i -le $heigh ]
do
  sum=0
  j=1
  while [ $j -lt $i ]
  do
    if [ `expr $i % $j ` -eq 0 ]
    then
      sum=`expr $sum + $j `
    fi
    j=`expr $j + 1 `
  done

  if [ $sum -eq $i ]
  then
    echo "$i"
  fi

  i=`expr $i + 1 `
done

