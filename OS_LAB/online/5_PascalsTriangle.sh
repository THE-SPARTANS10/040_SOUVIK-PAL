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
        c=`echo "scale=0; ($i-$j+1)/$j"|bc`
        coeff=`expr $coeff \* $c`
      fi
      echo -n -e "\t$coeff"
    done
    echo " ---------------" 
  done
}

echo  "Enter number of rows -> "
read rows
term $rows
#echo $t
