read -p "Enter the hr value of first time: " hr1
read -p "Enter the min value of first time: " min1
read -p "Enter the sec value of first time: " sec1

read -p "Enter the hr value of second time: " hr2
read -p "Enter the min value of the second time: " min2
read -p "ENter the sec value of second time: " sec2

t1=`expr $hr1 \* 3600 + $min1 \* 60 + $sec1 `
t2=`expr $hr2 \* 3600 + $min2 \* 60 + $sec2 `

t=`expr $t1 + $t2 `

hr=`expr $t / 3600 `
t=`expr $t % 3600 `
min=`expr $t / 60 `
t=`expr $t % 60 `

echo "The added time is $hr:$min:$t"
