#!/bin/bash
amazon-linux-extras install -y docker
systemctl start docker
docker pull jenkins/jenkins:lts
rm -rf /jen
mkdir /jen
chmod 777 /jen
docker rm -f j1
docker run -itd -p 60800:8080 -v /jen:/var/jenkins_home --name j1 jenkins/jenkins:lts
docker exec j1 cat /var/jenkins_home/secrets/initialAdminPassword
