echo "Enter Two number: " 
read a
read b

read -p "Enter operator:[+,-,/,*]: " op

case $op in
  ["+"]) res=`expr $a + $b `;;
  ["-"]) res=`expr $a - $b `;;
  ["*"]) res=`expr $a \* $b `;;
  ["/"]) res=`expr $a / $b `;;
esac

echo "$a $op $b = $res";
