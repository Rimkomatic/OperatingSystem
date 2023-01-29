read -p "Enter the number: " num
rev=`expr $num % 10 `
num=`expr $num / 10 `
rev=`expr $rev \* 10 + $num % 10 `
num=`expr $num / 10 `
rev=`expr $rev \* 10 + $num % 10 `

echo "Reverse number is $rev"
