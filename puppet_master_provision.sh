#!/bin/bash

sudo apt-get update -y

cd /tmp
wget https://apt.puppetlabs.com/puppetlabs-release-trusty.deb
sudo dpkg -i puppetlabs-release-trusty.deb
sudo apt-get update -y
rm puppetlabs-release-trusty.deb

sudo apt-get install -y puppetmaster puppet  git

gem install r10k
gem install librarian-puppet
mkdir -p /etc/puppetlabs/r10k
mkdir /var/cache/r10k
chgrp puppet /var/cache/r10k
chmod 2775 /var/cache/r10k

sudo service puppetmaster restart
