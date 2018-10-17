##This script is used to swap "/" to "\" and "\" to "/"
#!/bin/bash
A="\\//"
B=$((${#A}-1))
echo $B
for i in `seq 0 $B`
do
 C=${A:i:1}
 if [ "$C" = "\\" ]
 then
  echo -n "/"
 elif [ "$C" = "/" ]
 then
  echo -n "\\"
 fi
done
