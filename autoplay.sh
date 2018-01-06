#! /bin/bash
clear
printf "\n\t\tThis Script install GIT MAVEN JENKINS ANSIBLE & DOCKER \n\n"
printf " \t\t  It only works for %s Family\n\n" "RedHat"
printf "\n\n\n\n"
printf "\n\t\t\t Maintainer PRAKASH POUDEL"
printf "\n\n\n\n"
sleep 3

scripts/installing-java.sh

sudo yum update -y
clear
sudo wget -O /etc/yum.repos.d/jenkins.repo http://pkg.jenkins-ci.org/redhat/jenkins.repo
sudo rpm --import https://jenkins-ci.org/redhat/jenkins-ci.org.key
sudo yum install -y git \
               maven \
               epel-release \
               ansible \
               docker \
               jenkins
               python \
               python-devel \
               python-pip

sudo systemctl restart jenkins \
                       docker
clear
echo " You are all set "
sleep 10

