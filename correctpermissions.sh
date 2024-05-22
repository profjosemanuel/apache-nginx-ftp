#!/usr/bin/env bash
// Adding current user to www-data
#adduser $USER www-data

//change ownership to user:www-data and 
chown $idusuario:$idgrupo -R /var/www/html
chmod u=rwX,g=srX,o=rX -R /var/www/html

// change file permissions of existing files and folders to 755/644
find /var/www/html -type d -exec chmod g=rwxs "{}" \;
find /var/www/html -type f -exec chmod g=rws "{}" \;
