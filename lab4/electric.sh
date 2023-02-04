read -p "Enter the bill: " u

if [ $u -ge 400 ]
then 
  bill=`expr $u \* 7 `
elif [ $u -gt 200 ]
then 
  bill=`expr $u \* 6 `
elif [ $u -gt 50 ]
then 
  bill=`expr $u \* 5 `
else
  bill=`expr $u \* 2 `
fi

echo "Bill is $bill"
