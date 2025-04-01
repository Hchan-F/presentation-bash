#!/bin/bash
repertoire_name() {
echo "Entrez le nom du répertoire à modifier: "
read repertoire
}

repertoire_name

if [ -d "$repertoire" ]; then
echo "Le répertoire existe et est accessible."
if ls "$repertoire"/*.log 1> /dev/null 2>&1; then
rm -v "$repertoire"/*.log
echo "Fichiers log supprimés dans $repertoire"
else
echo "Aucuns fichiers log trouvés dans $repertoire"
fi
else
echo "$repertoire n'existe pas"
fi

