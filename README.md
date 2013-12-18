[MultiTail]: http://www.vanheusden.com/multitail/
[Vagrant]: http://www.vagrantup.com/
[NGINX]: http://nginx.org/
[PHP-FPM]: http://php-fpm.org/
[dpkg-query]: http://man.he.net/man1/dpkg-query

## [NGINX] / [PHP-FPM] / [MultiTail] ##
Just a simple script used to help debug an [NGINX]/[PHP-FPM] setup on Unix machines. Generally goes with default locations for log files and especially helpful with [Vagrant] setups.

### Dependancies ###
* [MultiTail]
* [dpkg-query] - Installed by default in Debian & Ubuntu.

### Usage ###
<pre>
sudo chmod 777 www-logs.sh
sudo ./www-logs.sh
</pre>