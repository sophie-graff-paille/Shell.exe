#!/bin/bash
if [ "$1" = "Hello" ] 
then
echo "Bonjour, je suis un script!" 
fi

if [ "$1" = "Bye" ]
then
echo "Au revoir et bonne journée"
fi

#Pour les conditions, le if doit obligatoirement être utiliser avec les crochets.
#Suivi de then, echo et fi qui finit la condition.
#Pour résumer, si mon argument 1 est égal à Hello, alors mon terminal affichera Bonjour, je suis un script!
#Idem avec ma deuxième condition pour Au revoir.
#Les fi terminent les conditions.
#Je finis toujours par le chmod 700 pour les droits.
