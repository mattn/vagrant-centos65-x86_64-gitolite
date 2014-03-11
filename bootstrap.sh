#!/usr/bin/env bash

sleep 5
sudo yum update
sudo yum install -y git gitweb gitolite httpd
sudo chkconfig httpd on
sudo chkconfig --level 345 httpd on
sudo service httpd start
sudo -u gitolite gl-setup -q /vagrant/.vagrant/id_rsa.pub
