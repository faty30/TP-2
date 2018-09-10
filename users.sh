#!/bin/bash

echo "------------------------------------------------------";
echo "- Sauvegarde régulières des données";
echo "------------------------------------------------------";
echo "";

echo "Création de l'archive";

# On crée l'archive .tar en précisant entre guillemets les chemins absolus des $
tar -cvzf /home/users.tar.gz "/home/Fatou"  "/home/Mario"
echo "------------------------------------------------------";
echo "";

echo "Vérification de l'existence de l'archive";
# On teste si l'archive a bien été créée
if [ -e /home/users.tar.gz ]
then
echo ""
echo "Votre archive a bien été créée.";
echo ""
else
echo ""
echo "Il y a eu un problème lors de la création de l'archive.";
echo ""
fi

echo "### Fin de la sauvegarde.  ###";


