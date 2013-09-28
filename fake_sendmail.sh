#!/bin/sh 
prefix="~/htdocs/sendmail/new"
numPath="~/htdocs/sendmail"

if [ ! -f $numPath/num ]; then 
echo "0" > $numPath/num 
fi 
num=`cat $numPath/num` 
num=$(($num + 1)) 
echo $num > $numPath/num
name="$prefix/letter_$num.eml"
while read line 
do 
echo $line >> $name
done 
chmod 777 $name
/bin/true
