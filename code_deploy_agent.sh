#!/bin/bash

echo "Updating Yum..."

sudo yum update -y

echo "Updating Installing Code Deploy Agent (ap-southeast-1)..."
sudo yum install ruby
sudo yum install wget

cd /home/ec2-user
wget https://aws-codedeploy-ap-southeast-1.s3.ap-southeast-1.amazonaws.com/latest/install
chmod +x ./install
sudo ./install auto

echo "Checking Codedeploy Agent Status"
sudo service codedeploy-agent status

