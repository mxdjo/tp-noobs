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

