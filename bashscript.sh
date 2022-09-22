#!/bin/bash


E-MAIL="vovka7surnyk@gmail.com"
NAME="VOVKA"
TOCKEN=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

git config --global user.email $E-MAIL 
git config --global user.name $NAME
git add *
git commit -m "Add new log"  
git push https://$TOCKEN@github.com/Vovka7Surnyk/DevOpsTask.git