#!/usr/bin/env bash
// Adding current user to www-data
sudo adduser $USER www-data

//change ownership to user:www-data and 
sudo chown $USER:www-data -R /var/www/html
sudo chmod u=rwX,g=srX,o=rX -R /var/www/html

// change file permissions of existing files and folders to 755/644
sudo find /var/www/html -type d -exec chmod g=rwxs "{}" \;
sudo find /var/www/html -type f -exec chmod g=rws "{}" \;
