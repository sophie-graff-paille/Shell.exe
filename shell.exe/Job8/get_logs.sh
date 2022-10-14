#!/bin/bash
d=$(date +%d-%m-%y-%H-%M)
sudo grep -c "session opened" /var/log/auth.log > number_connection-$d
tar -cf number_connection-$d.tar.gz number_connection-$d
mv number_connection-$d.tar.gz /home/sophie/shell.exe/Job8/Backup

#La ligne 2 est la création d'une variable d pour afficher la date du jour et l'heure d'exécution.
#Grâce à grep on va chercher les occurences de la session opened dans le fichier log, et le chevron > va les rediriger dans le fichier number_connection.
#tar -cf va compresser ce fichier et le rendre fonctionnel.
#Et avec mv, on va rediriger le fichier vers un dossier Backup que j'avais créé avec mkdir auparavant.

