#!/bin/bash
mailform=/tmp/1form.txt
myemail=[your-email-here-without-brackets]
ip="$(curl ipecho.net/plain)"
#The email magic

echo "To: $myemail" > $mailform
echo "From: $myemail" >> $mailform
echo "Subject: Server ip update | $ip" >> $mailform
echo "$ip" >> $mailform
cat $mailform | ssmtp $myemail

rm $mailform

### coded by buf0rd ###
exit 0
