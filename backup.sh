#!/bin/bash
# date du jour
backupdate=$(date +%Y-%m-%d)

#répertoire de backup
dirbackup=/home/backup-$backupdate

# création du répertoire de backup
mkdir -p /home/backup

#Compression et copie de drupal et db_noobs

tar -C /var/www/html/drupal-7.15 -zcvf $dirbackup . >>  /root/`date +%F`-web.log


tar -C /var/lib/mysql/db_noobs -zcvf $dirbackup . >>  /root/`date +%F`-db.log


#Envoi de mail de confirmation à l'administrateur
echo "Sauvegarde du `date` terminée" | /usr/bin/mail -s "Rapport de sauvegarde" fatyjosy@gmail.com

