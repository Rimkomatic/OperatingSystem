read -p "Enter the number: " dec
bin=""

while [ $dec -gt 0 ]
do
  num=`expr $dec % 2 `
  bin=$num$bin
  dec=`expr $dec / 2 `
done
echo "The binary is $bin"
