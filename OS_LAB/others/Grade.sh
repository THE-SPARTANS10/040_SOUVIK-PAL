clear
rm out1
file1=f6Grade.txt
echo "Roll |    Name   | Marks | Grade" >> out1
echo "~~~~-|-~~~~~~~~~-|-~~~~~-|-~~~~~" >> out1
if [ -f $file1 ]
then
  exec<$file1
  while read line
  do
    set `echo $line`
    echo -n " " $1 " - "$2 "-  " $3 " -  " >> out1
    op=`expr $3 / 10`
    if [ $3 -gt -1 ]; then
      if [ $3 -gt -1 ] && [ $3 -le 50 ]; then
        echo -e 'F' >> out1
      else
        case $op in
          5) echo -e 'C' >> out1 ;;
          6) echo -e 'B' >> out1 ;;
          7) echo -e 'A' >> out1 ;;
          8) echo -e 'E' >> out1 ;;
          9) echo -e 'O' >> out1 ;;
          *) echo -e 'O' >> out1 ;;
        esac
      fi
    fi
  done
fi
cat out1