#!/bin/bash
export IFS=","
cat /home/sophie/shell.exe/'Job 9'/Shell_Userlist_VO.csv | while read Id Prenom Nom Mdp Role
do
sudo userdel $Prenom-$Nom
sudo groupdel $Prenom-$Nom
done

cat /home/sophie/shell.exe/'Job 9'/Shell_Userlist_modif.csv | while read Id Prenom Nom Mdp Role
do
sudo useradd $Prenom-$Nom
echo "$Prenom-$Nom:$Mdp" | sudo chpasswd
sudo usermod -u "$Id" "$Prenom-$Nom"
if [ "$Role" = "Admin" ]
then
sudo usermod -aG sudo $Prenom-$Nom
fi 
done

#Export va définir pour la variable IFS que la virgule est un séparateur.
#While read est une boucle de lecture.
#Cat va lire chaque ligne du fichier Shell_Userlist_VO.csv jusqu'à la fin du fichier.
#Avec sudo userdel et sudo groupdel, on supprime les $Prenom-$Nom du fichier original.
#done ferme la boucle.
#Cat va lire les lignes du fichier modifié Shell_Userlist_modif.csv
#Sudo useradd va ajouter les variables dans le fichier modifié.
#Sudo chpasswd permettra aux administrateurs de modifier les mots de passe
#Sudo usermod -u sert à associer les Uid aux utilisateurs
#On finit par la condition si un rôle d'utilisateur est égal à Admin
#Alors sudo usermod -aG sudo $Prenom-$Nom ajoute cet utilisateur au groupe sudo.
#fi termine la condition et done la boucle.
