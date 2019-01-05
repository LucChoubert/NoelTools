#! /bin/bash

FROM="$1"
TO="$2"
#TOMAIL="$3"

declare -A MAIL
MAIL["Luc"]="luc.choubert@gmail.com"
MAIL["Elsa"]="elsa.choubert@gmail.com"
MAIL["Jean-Marc"]="jmchoube@gmail.com"
MAIL["Carine"]="cavelange@yahoo.fr"
MAIL["Odile"]="ochouber@gmail.com"
MAIL["Clément"]="toskapy@gmail.com"
MAIL["Papa"]="georges.choubert@gmail.com"
MAIL["Maman"]="lucjm@wanadoo.fr"

TOMAIL="${MAIL[$FROM]}"

TEXT="/tmp/noel.txt"
rm -f $TEXT

touch $TEXT
echo "Hello $FROM" >> $TEXT
echo "C'est Noel" >> $TEXT
echo "Offre un cadeau a $TO" >> $TEXT

echo "Send To $TOMAIL :"
cat $TEXT
echo "===================="
cat $TEXT | mutt -s "Ta Vraie Mission pour Noel" $TOMAIL
