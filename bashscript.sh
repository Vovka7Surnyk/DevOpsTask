#!/bin/bash


source ./variables

git config --global user.email $E-MAIL 
git config --global user.name $NAME
git add *
git commit -m "Add new log"  
git push https://$TOKEN@$REPO