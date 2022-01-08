clear
rm out2
file1=f6Weather.txt
echo "DAY-|-TEMP-|-WTR" >> out2
echo "~~~~|~~~~~~|~~~~" >> out2
if [ -f $file1 ]
then
  exec<$file1
  while read line
  do
    set `echo $line`
    echo -n $1 "| " $2 " | " >> out2
    if [ $2 -lt 15 ]
    then 
      echo Very Cold >> out2
    elif [ $2 -lt 25 ]
    then 
      echo Cold >> out2
    elif [ $2 -lt 35 ]
    then 
      echo Hot >> out2
    else 
      echo Very Hot >> out2
    fi
  done
fi
cat out2