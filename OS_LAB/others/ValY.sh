clear
echo "Enter Value of x and n"
read x
read n
if [ $n -eq 1 ];then
  y=`expr 1 + $[x**2]`
elif [ $n -eq 2 ];then
  y=`expr 1 + $[x/n]`
elif [ $n -eq 3 ];then
  y=`expr 1 + 2 \* $x`
else
  y=`expr 1 + $n \* $x`
fi
echo "Value of Y is $y"