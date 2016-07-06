#!/bin/bash
# apache2
echo "system operations! [00]"
sudo a2enmod dav
sudo a2enmod dav_fs
sudo mkdir /home/webdav
sudo chown -R www-data:www-data /home/webdav
sudo htpasswd -c /etc/apache2/webdav.password webdav
sudo chown root:www-data /etc/apache2/webdav.password
sudo chmod u+rw-x /etc/apache2/webdav.password
sudo chmod g+r-wx /etc/apache2/webdav.password
sudo chmod o-rwx /etc/apache2/webdav.password
