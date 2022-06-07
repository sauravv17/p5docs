#!/bin/bash
sudo yum update -y
sudo amazon-linux-extras install -y epel
sudo amazon-linux-extras install -y java-openjdk11
sudo yum install -y epel-release
sudo yum install -y java-11-openjdk-devel
sudo /usr/sbin/alternatives --config java <<< '1'