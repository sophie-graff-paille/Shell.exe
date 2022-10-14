#!/bin/bash
sum=$(($1+$2))
echo $sum

#Comme les deux précédents jobs, création d'un fichier avec touch.
#Dans son nano j'écris la syntaxe ci-dessus qui permet de calculer la somme de 2 entiers dans un script shell.
#Le script lit les 2 nombres comme paramètres de ligne de commande et effectue l'opération d addition.
#Pour les expressions mathématiques, elles doivent être placées entre parenthèses avec un dollar comme $((...))
