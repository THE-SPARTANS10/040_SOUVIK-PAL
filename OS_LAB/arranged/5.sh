clear
for (( i=1 ; i<=6 ; i++ ))
do
  echo "$i> Enter Marks"
  read m
  op=`expr $m / 10`
  if [ $m -gt -1 ]; then #Positive integer and others check
    if [ $m -gt -1 ] && [ $m -le 50 ]; then #Fail check
      echo "Grade F for $m marks"
    elif [ $m -gt 101 ]; then #Greater than 100 check
      echo "Out of Bounds"
    else
      case $op in #GradeWise Marks
        5) echo "Grade C for $m marks" ;;
        6) echo "Grade B for $m marks" ;;
        7) echo "Grade A for $m marks" ;;
        8) echo "Grade E for $m marks" ;;
        9|*) echo "Grade O for $m marks" ;;
      esac
    fi
  elif [ $m -lt 0 ]; then #Negative integer check
    echo "NEGATIVE INT entered"
  else #Non-Integer check
    echo "Non-INT type entered"
  fi
  echo "-------------------"
done