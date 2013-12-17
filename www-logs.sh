#!/bin/sh
>/var/log/nginx/error.log
>/var/log/nginx/access.log
>/var/log/php5-fpm.log
sudo service nginx restart
sudo service php5-fpm restart
if which multitail >/dev/null; then
  sudo apt-get install multitail 
else
  echo multitail installed
fi
sudo multitail /var/log/php5-fpm.log /var/log/nginx/access.log /var/log/nginx/error.log
