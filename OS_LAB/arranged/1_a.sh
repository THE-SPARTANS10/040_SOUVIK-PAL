clear
echo " Enter a Year "
read x
if [ `expr $x % 400` -eq 0 ] && [ `expr $x % 100` -eq 0 ] || [ `expr $x % 4` -eq 0 ]; then
  echo "$x is a LEAP YEAR"
else
  echo "$x is not a LEAP YEAR !!"
fi
#Leap year program