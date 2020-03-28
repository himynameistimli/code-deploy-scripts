#!/bin/bash
echo " "
echo "--------------------------------"
echo "Updating Dependencies..."
echo "--------------------------------"

sudo yum update -y
sudo yum install ruby -y
sudo yum install wget -y
echo " "
echo "--------------------------------"
echo "Updating Installing Code Deploy Agent (ap-southeast-1)..."
echo "--------------------------------"

cd /home/ec2-user
wget https://aws-codedeploy-ap-southeast-1.s3.ap-southeast-1.amazonaws.com/latest/install
chmod +x ./install
sudo ./install auto

echo " "
echo "--------------------------------"
echo "Checking Codedeploy Agent Status"
echo "--------------------------------"

sudo service codedeploy-agent status

