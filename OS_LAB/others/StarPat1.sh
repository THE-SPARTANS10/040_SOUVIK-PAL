clear
echo "Enter number of rows or columns"
read n
for (( i=1 ; i<=$n ; i++ ))
do
  for (( k=`expr $n - $i` ; k>0 ; k-- ))
  do
    echo  -n " "  #-n -> No new line
  done
  for (( j=1 ; j<=$i ; j++ ))
  do
    echo  -n "* "
  done
  echo ""
done