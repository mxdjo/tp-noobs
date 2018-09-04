#! /bin/bash
for  user in `cat /etc/passwd | cut -d ":" -f 1`; do
    if [ `id -u $user` -ge 1000 ] && [ -d /home/$user/ ]; then
	printf " \nl'utilisateur $user est compatible "
	printf "\n Sauvegarde de son dossier personnel"
	tar -C /home/$user -zcf /root/sauvegardes/$user-`date +%F-%T`.tar.gz .
     fi 
done

