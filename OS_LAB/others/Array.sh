clear
echo "Enter Array Size"
read n
echo "Enter Elements"
for (( i=0 ; i<n ; i++ ))
do
  read a[i] #Entering elements
done
echo -n "Original Array is : "
echo -e "${a[@]}\t"
#-e->In same line
#@->All elements in array
#\t->Horizontal Tab