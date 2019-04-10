# refer to 
# https://www.tecmint.com/install-php-7-in-centos-7/
#!/bin/bash

yum install http://rpms.remirepo.net/enterprise/remi-release-7.rpm
yum install yum-utils
yum-config-manager --enable remi-php56
yum install php php-mcrypt php-cli php-gd php-curl php-mysql php-ldap php-zip php-fileinfo php-fpm composer

#set composer chinese mirror
composer config -g repo.packagist composer https://packagist.laravel-china.org

