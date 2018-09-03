#! /bin/bash

for user in `cat users.txt`
do
adduser $user
done
