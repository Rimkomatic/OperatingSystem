read -p "Enter the number to check: " num

prevNum=$num
revNum=0

while [ $num -ge 1 ]
do
  revNum=`expr $revNum \* 10 + $num % 10 `
  num=`expr $num / 10 `
done

if [ $revNum -eq $prevNum ]
then
  echo "Number is palindeome "
else
  echo "Number is not palindeome"
fi
