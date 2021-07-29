#!/bin/bash
sudo yum -y install python-simplejson     # Install PHP latest version
sudo yum update                           # System wide upgrade
sudo yum install -y default-jre           # Install Java (just to be safe)
sudo yum install httpd     

sudo systemctl start httpd

sudo yum -y install php php-mysql
sudo systemctl restart httpd

sudo su -c 'echo "<? php phpinfo() ?>" > /var/www/html/test.php'

sudo yum -y install mysql-server

sudo systemctl start mysql
sudo mysqladmin -u root create blog
sudo mysql_secure_installation

sudo yum install wget -y
sudo cd /tmp/www/html
sudo wget http://wordpress.org/latest.tar.gz
sudo tar -xzvf latest.tar.gz
sudo mv wordpress blog

sudo cd blog
sudo mv wp-config-sample.php wp-config.php
sudo su -c 'echo "
define(‘DB_NAME’, ‘blog’);
define(‘DB_USER’, ‘root’);
define(‘DB_PASSWORD’, ‘wordpress’);
define(‘DB_HOST’, ‘localhost’);" > wp-config.php'