read -p "Enter the input: " a

case $a in 
  [A-Z]) echo "Upper case";;
  [a-z]) echo "Lower case";;
  *) case $a in
    [0-9]) echo "Number";;
    *) echo "Special character";;
  esac
esac
