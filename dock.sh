#!/bin/bash
amazon-linux-extras install -y docker
systemctl start docker
docker pull jenkins/jenkins:lts
