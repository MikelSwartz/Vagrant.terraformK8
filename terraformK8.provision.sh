#!/bin/bash
cd /vagrant/
yum update
yum install -y vim git tree wget unzip

#Install Terraform
if [ -f "/vagrant/terraform_0.8.4_linux_amd64.zip" ]
then
        echo "terraform_0.8.4_linux_amd64.zip exists"
else
        wget https://releases.hashicorp.com/terraform/0.8.4/terraform_0.8.4_linux_amd64.zip
fi

if [ -f "/home/vagrant/bin/terraform" ]
then
       rm -f /home/vagrant/bin/terraform
fi

unzip -o terraform_0.8.4_linux_amd64.zip -d /home/vagrant/bin
	

#Clone hands-on-with-kubernetes-workshop
if [ -d "/vagrant/hands-on-with-kubernetes-workshop" ]
then
echo true
        rm  /vagrant/hands-on-with-kubernetes-workshop -rf
fi
echo "Cloning: hands-on-with-kubernetes-workshop by apprenda"
git clone https://github.com/apprenda/hands-on-with-kubernetes-workshop.git
echo "GO to https://github.com/apprenda/hands-on-with-kubernetes-workshop for more info."
echo "'vagrant ssh' to ssh into the vagrant box"

