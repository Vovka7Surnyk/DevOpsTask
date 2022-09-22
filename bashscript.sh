#!/bin/bash


E-MAIL="vovka7surnyk@gmail.com"
NAME="VOVKA"
TOCKEN=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

git config --global user.email $E-MAIL 
git config --global user.name $NAME
git add *
git commit -m "Add new log"  
git push https://$TOCKEN@github.com/Vovka7Surnyk/DevOpsTask.git