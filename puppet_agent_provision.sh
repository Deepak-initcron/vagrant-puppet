#!/bin/bash

sudo apt-get update -y

cd /tmp
wget https://apt.puppetlabs.com/puppetlabs-release-trusty.deb
sudo dpkg -i puppetlabs-release-trusty.deb
sudo apt-get update -y
rm puppetlabs-release-trusty.deb

sudo apt-get install -y puppet git

sudo echo '[agent]' >> /etc/puppet/puppet.conf
sudo echo 'server=red1' >> '/etc/puppet/puppet.conf'
sudo service puppet restart
