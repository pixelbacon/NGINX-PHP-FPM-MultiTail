#!/bin/sh
>/var/log/nginx/error.log
>/var/log/nginx/access.log
>/var/log/php5-fpm.log
sudo service nginx restart
sudo service php5-fpm restart
if dpkg-query -l multitail; then
  echo mutlitail install
else
  echo multitail not installed. Fixing that.
  sudo apt-get  install multitail
fi
sudo multitail /var/log/php5-fpm.log /var/log/nginx/access.log /var/log/nginx/error.log