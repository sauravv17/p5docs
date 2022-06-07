#!/bin/bash
sudo yum update -y
sudo amazon-linux-extras install -y epel
sudo amazon-linux-extras install -y java-openjdk11
sudo yum install -y epel-release
sudo yum install -y java-11-openjdk-devel
sudo /usr/sbin/alternatives --config java <<< '1'

sudo wget http://repos.fedorapeople.org/repos/dchen/apache-maven/epel-apache-maven.repo -O /etc/yum.repos.d/epel-apache-maven.repo
sudo sed -i s/\$releasever/6/g /etc/yum.repos.d/epel-apache-maven.repo
sudo yum install -y apache-maven

sudo yum install git -y

sudo wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat-stable/jenkins.repo
sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key
sudo yum install -y jenkins
sudo systemctl start jenkins
sudo systemctl enable jenkins