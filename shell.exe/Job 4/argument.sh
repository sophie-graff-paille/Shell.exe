 #!/bin/bash
touch $1 | cat $2 > $1 

#Plusieurs actions dans ce script. La création avec la commande touch d'un premier fichier copyfile.txt.
#Suivi d'un pipe qui sépare les commandes et va permettre de passer ce résultat (copyfile.txt) à la 2nde commande.
#La commande cat va lire et afficher le contenu du 2ème argument (création du fichier myfile.txt)et 
#le rediriger avec le chevron vers le premier argument copyfile.txt. 
#Comme pour les autres jobs, je finis en faisant un chmod 700 argument.sh pour me donner les droits.
