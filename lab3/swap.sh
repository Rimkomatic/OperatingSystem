read -p "Enter the first number: " a
read -p "Enter the scond number: " b

echo "Numbers before swaping is $a and $b"

a=`expr $a + $b `
b=`expr $a - $b `
a=`expr $a - $b `

echo "Numbers after swaping is $a and $b"
