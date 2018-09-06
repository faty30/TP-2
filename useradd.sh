#! /bin/bash
while read -r userid username userpassword
do
echo "Creation de l'utilisateur $userid ..."
useradd -c "$username" -m "$userid" -p "$userpassword"
done < /home/ListeUtilisateurs.txt
