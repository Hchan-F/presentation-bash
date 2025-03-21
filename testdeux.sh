#!/bin/bash
clear
echo "Bienvenue dans le programme !"
echo "Veuillez entrer votre nom"
read nom
echo "Analyse en cours..."
sleep 2
echo "Analyse terminée !"
echo "Bienvenue $nom"

if [ "$nom" = "Benoit" ]; then
echo "Bonjour Benoit!"
elif [ "$nom" = "Hinda" ]; then 
echo "Bonjour Hinda !"
else
echo "Je ne vous connais pas..."
fi

while true 
do
echo "Comment vous sentez-vous aujourd'hui (triste, énervé, bien, heureux) ?"
read emotion 
echo "Analyse en cours..."
sleep 2
echo "Analyse terminée !"
if [ "$emotion" = "triste" ]; then
echo "Puissiez-vous trouver la joie là ou elle se trouve ! "
elif [ "$emotion" = "énervé" ]; then
echo "Tuer quelqu'un vous apportera davantage de problème que de sérénité !"
elif [  "$emotion" = "bien" ] || [ "$emotion" = "heureux" ]; then 
echo "Tout roule pour vous on dirait !"
fi
 
break
done
