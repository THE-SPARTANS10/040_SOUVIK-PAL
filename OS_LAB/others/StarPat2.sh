clear
echo "Enter number of rows or columns"
read n
for (( i=$n ; i>0 ; i-- ))
do
  for (( k=`expr $n - $i` ; k>0 ; k-- ))
  do
    echo  -n " "  #-n -> No new line
  done
  for (( j=$i ; j>0 ; j-- ))
  do
    echo  -n "* "
  done
  echo ""
done