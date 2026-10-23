#!/bin/bash
clear
echo "Bienvenue dans le programme !"
echo "Veuillez entrer votre nom"
read -r nom
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

echo "Comment vous sentez-vous aujourd'hui (triste, énervé, bien, heureux) ?"
read -r emotion 
echo "Analyse en cours..."
sleep 2
echo "Analyse terminée !"
if [ "$emotion" = "triste" ]; then
echo "J'espère que votre journée s'améliorera ! "
elif [ "$emotion" = "énervé" ]; then
echo "Prendre un moment pour se détendre peut faire du bien !"
elif [  "$emotion" = "bien" ] || [ "$emotion" = "heureux" ]; then 
echo "Tout roule pour vous on dirait !"
else
echo "Je ne reconnais pas cette émotion."
fi
