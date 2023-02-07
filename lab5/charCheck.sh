read -p "Enter a character: " c;

case $c in
  ["A"\o"a"\-o"E"\-o"e"\-o"I"\-o"i"\-o"O"\-o"o"\-o"U"\-o"u"]) echo "It is Vowel";;
  [a-z]) echo "It is consonant";;
  [A-Z]) echo "It is a consonant";;
  *) echo "Not a character";;
esac
