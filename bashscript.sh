#!/bin/bash


E-MAIL="vovka7surnyk@gmail.com"
NAME="VOVKA"
TOCKEN=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
REPO=github.com/Vovka7Surnyk/DevOpsTask.git

git config --global user.email $E-MAIL 
git config --global user.name $NAME
git add *
git commit -m "Add new log"  
git push https://$TOCKEN@$REPO