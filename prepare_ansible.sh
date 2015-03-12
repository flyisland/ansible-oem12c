#! /bin/sh -x
# install ansible

sudo mv /etc/yum.repos.d/CentOS-Base.repo /etc/yum.repos.d/CentOS-Base.repo.backup
sudo curl http://mirrors.163.com/.help/CentOS6-Base-163.repo -o /etc/yum.repos.d/CentOS-Base.repo
sudo yum clean all
sudo yum makecache
sudo yum install ansible -y

touch /home/vagrant/.ssh/known_hosts
cp /vagrant/inventory ./inventory
cp /vagrant/.vagrant/machines/em12c/virtualbox/private_key ./em12c_private_key
chmod 600 /home/vagrant/em12c_private_key

ansible-playbook /tmp/alias.yml
