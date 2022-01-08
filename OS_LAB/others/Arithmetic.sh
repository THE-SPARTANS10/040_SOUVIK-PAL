clear
echo " Enter two values "
read a
read b
sum=`expr $a + $b`
dif=`expr $a - $b`
mul=`expr $a \* $b`
div=`expr $a / $b`
mod=`expr $a % $b`
echo " The summetion is $sum"
echo " The difference is $dif"
echo " The multiplication is $mul"
echo " The division is $div"
echo " The modulus is $mod"