#!/usr/bin/env bash

sleep 5
sudo yum update
sudo yum install -y git gitweb gitolite httpd
sudo chkconfig httpd on
sudo chkconfig --level 345 httpd on
sudo service httpd start
sudo -u gitolite gl-setup -q /vagrant/.vagrant/id_rsa.pub
sudo echo '$REPO_UMASK=0022;' >> ~gitolite/.gitolite.rc
sudo chmod 755 /var/lib/gitolite
sudo chmod 755 /var/lib/gitolite/repositories
sudo ln -s /var/lib/gitolite /var/lib/git
