#! /bin/bash
clear
printf "\n\t\tThis Script install GIT MAVEN JENKINS ANSIBLE & DOCKER \n\n"
printf " \t\t  It only works for %s Family\n\n" "RedHat"
printf "\n\n\n\n"
printf "\n\t\t\t Maintainer PRAKASH POUDEL"
printf "\n\n\n\n"
sleep 3
printf "\n\n\n"
printf "\n\t Configuring JAVA in your System \n\n"
sleep 3
printf "\n\n"
cd /opt/
sudo wget --no-cookies --no-check-certificate --header \
		"Cookie: gpw_e24=http%3A%2F%2Fwww.oracle.com%2F; oraclelicense=accept-securebackup-cookie" \
                "http://download.oracle.com/otn-pub/java/jdk/8u151-b12/e758a0de34e24606bca991d704f6dcbf/jdk-8u151-linux-x64.tar.gz"
sudo tar xzf jdk-8u151-linux-x64.tar.gz
cd  /opt/jdk1.8.0_151/
clear
echo " YOUR JAVA IS INSTALLED "
echo " YOUR JAVA ENVIRONMENT IS SET UP!! "
printf "\n\n\n"
sleep 5
clear
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

