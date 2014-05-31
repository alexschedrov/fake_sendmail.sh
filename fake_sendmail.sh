#!/bin/sh
prefix="/home/USERNAME/sendmail/new"
numPath="/home/USERNAME/sendmail"

if [ ! -f $numPath/email_numbers ]; then
echo "0" > $numPath/email_numbers
fi
emailNumbers=`cat $numPath/emailNumbers`
emailNumbers=$(($emailNumbers + 1))
echo $emailNumbers > $numPath/emailNumbers
name="$prefix/letter_$emailNumbers.eml"
while IFS= read line
do
echo "$line" >> $name
done
chmod 777 $name
/bin/true
