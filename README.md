 # tp-noobs
Ce repo permet de faire le compte rendu des tp qui m'ont été donnés .
Chaque TP a un dossier oû sont stockés les fichiers en rapport avec le dit TP

## TP1

Pour le TP1 , il s'agit de mettre en place un serveur LAMP et d'y installer drupal 7.28
Un playbook d'installation ( play_noobs.yml) se trouve donc dans le dossier tp1/

### play_noobs.yml

#### Modules utilisés dans le playbook
Les modules utilisés dans ce playbook sont:
- apt: qui est le module de gestion de paquets sous les systèmes Debian
- mysql_db: module de gestion des bases de données mysql
- mysql_user: module de gestion des utilisateurs mysql
- get_url: module de telechargement de fichiers
- unarchive: module pour décompresser les archives 

#### Utilisation du playbook

Avant d'utiliser ce playbook , il faut penser à installer ansible sur notre machine de contrôle ( logique :) ).
Ensuite , ajouter le nom des hôtes ansible sur lesquels Drupal doit être installé au fichier inventory ( par défaut /etc/ansible/hosts )
Puis  dans le playbook, on pense aussi à modifier le 'hosts' pour qu'il concorde avec notre fichier inventory.


## TP2
Les fichiers du TP2 sont dans le dossier tp2/

Ce sont :

- backup_script.sh: le script de l'exercice A qui permet de sauvegarder un site Web
- create_user_via_list.sh: le script de création massive de comptes utilisateur 
- ListeUtilisateurs.txt: fichier test de "create_user_via_list.sh"
- delete_user_via_list.sh: le script de suppression d'utilisateurs
- ListeLoginsAsupprimer: fichier test de "delete_user_via_list.sh"
- sauvegarde_users.sh :sauvegarde des dossiers des utilisateurs 
* Pour que le serveur puisse envoyer le mail à l'administrateur , il faut s'assurer de la présence du paquet mailutils (responsable de la commande "mail") et d'un MTA (mail transfer agent) : postfix

La configuration de postfix peut être vue ici (https://www.howtoforge.com/tutorial/configure-postfix-to-use-gmail-as-a-mail-relay/)

## TP3

Les fichiers sont :
- db.192 : le fichier de resolution inverse
- db.noobs.net: le fichier de resloution directe
- hostname : /etc/hostname
- named.conf.local: Fichiers de definition de zone
- named.conf.options: Oû est defini les parametres généraux
- resolv.conf :/etc/resolv.conf le resolveur

## TP4 ( donné pendant la seconde séance de travail par Fray)

C'est un TP sur l'utilisation des templates jinja2.
Cas pratique avec une page index.html

## TP 5

Pour le TP5, il s'agit de mettre en place un dépôt de paquets rpm sous CentOS avec vsftpd
Les fichiers dans le dossier tp5/ sont :
- le fichier /etc/yum.repos.d/centos6.repo
- le fichier /etc/fstab

Les étapes de la mise en place sont ici(https://wp.me/pa5S7z-1S)
