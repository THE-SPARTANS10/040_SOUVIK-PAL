#f(x,n)=1 + x^2/2! + x^4/4! +..+ x^(2*n)/(2*n)!
fact()
{
  n=$1
  if [ $n -eq 0 ] || [ $n -eq 1 ]; then
    echo 1
  else
    echo $(( $n * `fact $(( $n - 1 ))` ))
  fi
}
series()
{
  n=$1
  x=$2
  sum=1
  for (( i=2 ; i<=$n ; i+=2 ))
  do
    temp1=`echo "$x^$i"|bc`
    f=`fact $i`
    sum=`echo "scale=2;$sum+$temp1/$f"|bc` #scale=2 -> Upto 2 decimal places
    #sum=`echo "scale=2;$sum+$temp2"|bc`
  done
  echo $sum
}
echo -n "Enter value of variable [ x ] -> "
read x
echo -n "Enter number of terms [ n ] -> "
read n
ans=`series $n $x`
echo The ANSWER is $ans