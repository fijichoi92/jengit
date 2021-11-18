#!/bin/bash
amazon-linux-extras install -y docker
systemctl start docker
docker pull jenkins/jenkins:lts
mkdir /jenkins
chmod 777 /jenkins
docker run -itd -p 60800:8080 -v /jenkins:/var/jenkins_home --name j1 jenkins/jenkins:lts
cat /jenkins/secrets/initialAdminPassword
