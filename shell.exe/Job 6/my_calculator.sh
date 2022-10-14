#!/bin/bash
if [ "$2" = "+" ]
then
Result=$(($1+$3))
echo $Result 
fi

if [ "$2" = "-" ]
then
Result=$(($1-$3))
echo $Result
fi

if [ "$2" = "x" ]
then
Result=$(($1*$3))
echo $Result
fi

if [ "$2" = "/" ]
then
Result=$(($1/$3))
echo $Result
fi

#Dans ce job on utilise à nouveau les conditions. J'utilise une condition pour chaque opération.
#Sachant que les symboles d'opération sont en 2ème position et les nombres en 1ère et 3ème.
#Si mon argument 2 = +, alors mon résultat sera égal à argument 1 + argument 3.
#Mon echo sera donc la somme des 2 chiffres des arguments 1 et 3.
#fi termine la condition.
#Je réitère avec les autres opérations : soustraction, multiplication et division.
#chmod 700 my_calculator.
