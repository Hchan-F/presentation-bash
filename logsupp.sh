#!/bin/bash
repertoire_name() {
echo "Entrez le nom du répertoire à modifier: "
read repertoire
}

repertoire_name

if [ -d "$repertoire" ]; then
echo "Le répertoire existe."
if compgen -G "$repertoire/*.log" > /dev/null; then
echo "Fichiers .log trouvés :"
printf '%s\n' "$repertoire"/*.log
echo "Voulez-vous supprimer ces fichiers ? (o/n)"
read -r confirmation
if [ "$confirmation" = "o" ]; then
rm -v -- "$repertoire"/*.log
echo "Operation de suppression terminée."
else 
echo "Suppression annulée."
fi
else
echo "Aucun fichier .log trouvé dans $repertoire."
fi
else
echo "Le répertoire $repertoire n'existe pas."
fi

