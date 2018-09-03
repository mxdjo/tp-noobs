#! /bin/bash

for user in `cat ListeLoginsAsupprimer.txt`
do
deluser $user
done
