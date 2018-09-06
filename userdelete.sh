#!/bin/bash
for nom in $(cat ListeLoginsAsupprimer.txt) 
 do  deluser $nom
echo 'utilisateur supprimer'
done 


