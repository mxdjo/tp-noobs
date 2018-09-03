#! /bin/bash

for user in `cat ListeUtilisateurs.txt`
do
adduser $user
done
