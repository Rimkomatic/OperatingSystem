read -p "Enter value of A: " a
read -p "Enter value of B: " b
read -p "Enter value of C: " c

d=$c
c=$b
b=$a
a=$d

echo "The values after swap is A: $a B: $b C:$c"

