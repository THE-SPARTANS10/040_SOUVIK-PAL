clear
echo "Enter Sides of Triangle in Decimals"
read a
read b
read c
s=`echo "scale=3;($a+$b+$c)/3"|bc`
sa=`echo "scale=3;sqrt($s*($s-$a)*($s-$b)*($s-$c))"|bc`
echo "Output is "$sa