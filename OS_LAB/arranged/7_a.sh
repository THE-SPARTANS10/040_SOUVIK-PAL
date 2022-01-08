printPascal()
{
  n=$1
  #arr[$n][$n]
  for ((line=0;line<$n;line++))
  do
    for ((i=0;i<=$line;i++))
    do
      if [ $line -eq $i -o $i -eq 0 ]; then
        arr[line][i]=1
      else
        arr[line][i]=`expr ${arr[line-1][i-1]} + ${arr[line-1][i]}`
      fi
      echo -n "${arr[line][i]} "
    done
    echo
  done
}
echo -n "Enter Triangle Size -> "
read n
ans=`printPascal $n`
echo The ANSWER is $ans