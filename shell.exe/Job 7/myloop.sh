#!/bin/bash
for i in 1 2 3 4 5 6 7 8 9 10
do
echo "Je suis un script qui arrive à faire une boucle $i"
done

#Pour la boucle for le i qui suit est le caractère de remplacement pour une variable.
#Le in sépare la variable des éléments qui suivent et sur lesquels je veux exécuter l'instruction.
#Le do va déclencher la boucle et exécutera l'instruction 10 fois dans le job présent.
#Mon echo 'Je suis un script qui arrive à faire une boucle $i" est le code à répéter jusqu à 10.
#Done arrêtera la boucle quand l'instruction sera achevée.
#A nouveau chmod 700 myloop.sh pour avoir les droits.
