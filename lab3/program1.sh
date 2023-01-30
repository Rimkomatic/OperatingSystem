echo "Enter first number: "
read a
echo "Enter second number: "
read b
c=`expr $a + $b `
d=`expr $a - $b `
e=`expr $a \* $b `
f=`expr $a / $b `
g=`expr $a % $b `

echo "The + operation is $c"
echo "The - operation is $d"
echo "The * operation is $e"
echo "The / operation is $f"
echo "The % operation is $g"

