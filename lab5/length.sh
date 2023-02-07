read -p "Enter the number: " a

case $a in
  [1-9][1-9][1-9]) echo "Three dig";;
  [1-9][1-9]) echo "Two dig number";;
  [1-9]) echo "Single dig number";;
  *) echo "Please enter the number that is less than or equal to 3 digit";;
esac
