read -p "Enter the unit: " u


if [ $u -ge 400 ]
then 
  exes=`expr $u - 400 `
  exesBill=`expr $exes \* 7 `
  bill=`expr 100 + 750 + 1200 + $exesBill `

elif [ $u -gt 200 ]
then 
  exes=`expr $u - 200 `
  exesBill=`expr $exes \* 6 `
  bill=`expr 100 + 750 + $exesBill `

elif [ $u -gt 50 ]
then 
  exes=`expr $u - 50`
  exesBill=`expr $exes \* 5 `
  bill=`expr 100 + $exesBill `

else
  bill=`expr $u \* 2 `
fi

echo "Bill is $bill"
