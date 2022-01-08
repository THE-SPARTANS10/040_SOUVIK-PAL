term()
{
  r=$1
  coeff=1
  for (( i=0 ; i<$r ; i++ ))
  do
    for (( space=1 ; space<= $r - $i ; space++ ))
    do
      echo -n " "
    done
    for (( j=0 ; j<=$i ; j++ ))
    do
      if [ $j -eq 0 ] || [ $i -eq 0 ]; then
        coeff=1
      else
        c=`expr $($i - $j + 1)/ $j`
        coeff=`expr $coeff \* $c`
      fi
      echo -n "    " $coeff
    done
    echo -e "\n\n"
  done
}

echo -n "Enter number of rows -> "
read rows
t=`term $rows`
echo $t