clear
echo " Enter range "
read s
a=0
b=1
echo -n "Fibonacci Series $s range - "
echo -n " $a"
echo -n " $b"
for (( i = 2 ; i < $s - 2 ; i++ ))
do
  c=`expr $a + $b`
  echo -n " $c"
  a=$b
  b=$c
done