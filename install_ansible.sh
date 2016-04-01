#! /bin/sh -x
# install ansible

sudo mv /etc/yum.repos.d/CentOS-Base.repo /etc/yum.repos.d/CentOS-Base.repo.backup
sudo curl http://mirrors.163.com/.help/CentOS6-Base-163.repo -o /etc/yum.repos.d/CentOS-Base.repo
sudo yum clean all
# sudo yum makecache
sudo yum install ansible -y

ansible-playbook /vagrant/setup_ansible.yml
