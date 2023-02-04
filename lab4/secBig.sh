echo "Enter the numbers: "
read a
read b
read c

if [ \( $a -gt $b \-a $a -lt $c \) \-o \( $a -lt $b \-a $a -gt $c \) ]
then 
  echo "Number is $a"
elif [ \( $b -lt $c \-a $b -gt $a \) \-o \( $b -gt $c \-a $b -lt $a \) ]
then 
  echo "Number is $b"
else
  echo "Number is $c"
fi
