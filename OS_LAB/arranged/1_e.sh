Armstrong() 
{
y=$1
x=$y
z=$y
while [ $x -ne 0 ] #Digit Counting
do
  count=`expr $count + 1`
  x=`expr $x / 10`
done
sum=0 #Armstrong Calculation
for (( i=1 ; i<=$count ; i++ ))
do
  a=`expr $z % 10`
  sum=`expr $sum + $[$a**$count]`
  z=`expr $z / 10`
done
if [ $y -eq $sum ]; then #Armstrong Check
  echo $y
else
  echo -1
fi
}
echo "Enter a lowest and highest value of range"
read a
read b
echo "Series for Armstrong number"
if [ $a -eq 0 ]; then
  echo -n " "$a
  a=1
fi
for ((  i=$a ; i<=$b; i++ ))
do
  x=`Armstrong $i`
  if [ $x -ne -1 ]; then
    echo -n " "$x
  fi
done
