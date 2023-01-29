read -p "Enter the time in second: " t

echo "Time in second is $t"

hr=`expr $t / 3600 `
t=`expr $t % 3600 `
min=`expr $t / 60 `
t=`expr $t % 60 `
echo "Hour value is $hr"
echo "Min value is $min"
echo "Second valie is $t"
