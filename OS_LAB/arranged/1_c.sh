clear
echo "Enter a number"
read y
x=$y
sum=0
while [ $x -ne 0 ]
do
  rem=`expr $x % 10`
  sum=`expr $rem + $sum \* 10`
  x=`expr $x / 10`
done
if [ $y -eq $sum ]; then
  echo "Pallindrome Number"
else
  echo "Not Pallindrome Number"
fi