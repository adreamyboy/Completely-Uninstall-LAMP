If your time does not permit the close supervision of your project then i am here for your help related with LAMP or LEMP Stack and others.
Contact Me For Engaged Your Works: 



#!/bin/bash
# This will remove Apache
sudo service apache2 stop
sudo apt-get purge apache2 apache2-utils apache2.2-bin 
sudo apt remove apache2.*
sudo apt-get autoremove
whereis apache2
sudo rm -rf /etc/apache2

# This will remove PHP version. Type your php version before run below command. I am using php7.4
sudo apt-get purge `dpkg -l | grep php7.4| awk '{print $2}' |tr "\n" " "`
sudo apt-get purge php7.*
sudo apt-get autoremove --purge
whereis php
sudo rm -rf /etc/php

# This will remove MYSql
sudo service mysql stop
sudo apt-get remove --purge *mysql\*
sudo apt-get remove --purge mysql-server mysql-client mysql-common -y
sudo rm -rf /etc/mysql
sudo apt-get autoremove
sudo apt-get autoclean

sudo reboot