#! /bin/bash

#Destination des sauvegardes

DESTINATION=/home/sauvegardes/backup-`date +%F`.tar.gz


#Création du dossier sauvegardes dans /home
mkdir -p /home/sauvegardes


#Compression et copie (sauvegardes) 

tar -C /var/www/html/drupal -zcvf $DESTINATION . >>  /root/`date +%F`-web.log

tar -C /var/lib/mysql/db_noobs -zcvf $DESTINATION . >>  /root/`date +%F`-db.log


#Envoi du mail à l'administrateur
echo "Sauvegarde du `date` terminée" | /usr/bin/mail -s "Rapport de sauvegarde" mariofadegnon@gmail.com

