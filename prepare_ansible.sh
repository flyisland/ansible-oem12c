#! /bin/sh -x
# install ansible

touch /home/vagrant/.ssh/known_hosts
cp /vagrant/inventory ./inventory
chmod 600 /home/vagrant/inventory
cp /vagrant/.vagrant/machines/em12c/virtualbox/private_key ./em12c_private_key
chmod 600 /home/vagrant/em12c_private_key
