read -p "Enter the number to check if prime or not: " num

test=2
flag=0

while [ $test -lt $num ]
do
  if [ `expr $num % $test ` -eq 0 ]
  then
    flag=`expr $flag + 1 `
  fi
  test=`expr $test + 1 `
done

if [ $flag -ge 1 ]
then
  echo "Number is composit"
else
  echo "Number is prime"
fi

