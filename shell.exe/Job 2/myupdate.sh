#!/bin/bash
sudo apt-get update
sudo apt-get upgrade

#Avec touch je crée mon fichier myupdate.sh
#Dans son nano j'écris les commandes sudo apt-get update et sudo apt-get upgrade pour mettre à jour
#les nouveaux paquets.
#Je sors de nano, je fais chmod 700 myupdate.sh pour me donner les droits.
#Et je lance le script ./myupdate.sh
