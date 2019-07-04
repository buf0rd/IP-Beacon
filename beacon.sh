#!/bin/bash
PATH=/usr/local/sbin:/usr/local/bin:/sbin:/bin:/usr/sbin:/usr/bin

mailform=/tmp/1form.txt
myemail=[your-email-here-without-brackets]
ip="$(curl icanhazip.com)"
#The email magic

echo "To: $myemail" > $mailform
echo "From: $myemail" >> $mailform
echo "Subject: Server ip update | $ip" >> $mailform
echo "$ip" >> $mailform
cat $mailform | ssmtp $myemail

rm $mailform

### buf0rd ###
exit 0
