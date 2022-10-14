#!/bin/bash
if diff /home/sophie/shell.exe/'Job 9'/Shell_Userlist_VO.csv /home/sophie/shell.exe/'Job 9'/Shell_Userlist_modif.csv  
then
exit  
else
../home/sophie/shell.exe/'Job 9'/accessrights.sh
rm /home/sophie/shell.exe/'Job 9'/Shell_Userlist_VO.csv
cp /home/sophie/shell.exe/'Job 9'/Shell_Userlist_modif.csv /home/sophie/shell.exe/'Job 9'/Shell_Userlist_VO.csv
chmod 777 /home/sophie/shell.exe/'Job 9'/Shell_Userlist_VO.csv

fi

#Dans cette condition on ajoute d'abord la commande diff qui va comparer les différences entre 2 fichiers semblables.
#Si les 2 fichiers restent identiques alors on sort avec exit.
#Mais avec else on ajoute des instructions conditionnelles.
#La commande de la ligne 6 permet l'exécution par cron.
#C'est aussi pour cette raison qu'on indique partout les chemins absolus.
#Et après on supprime avec rm le fichier Shell_Userlist_VO.csv
#Et on copie avec cp le fichier modifié pour le renommer comme l'original.
#J'accorde les droits à moi et aux autres utilisateurs avec chmod 777...
#Le fi termine la condition.
