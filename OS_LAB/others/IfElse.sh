clear
echo " Enter a Number "
read x
if [ $x -gt 0 ]; then
  echo "$x is positive"
elif [ $x -lt 0 ]; then
  echo "$x is negative"
elif [ $x -eq 0 ]
then
  echo "$x is zero"
else
  echo "Not A Number $x !! Please enter a Valid Number!!"
fi 