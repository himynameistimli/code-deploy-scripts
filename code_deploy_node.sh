#!/bin/bash
echo " "
echo "--------------------------------"
echo "Install for Nodejs (12.x)"
echo "--------------------------------"

curl --silent --location https://rpm.nodesource.com/setup_12.x | bash -
# install node and npm in one line
yum install -y nodejs
# install pm2 to restart node app

echo "--------------------------------"
echo "Installing pm2"
echo "--------------------------------"

npm i -g pm2@latest