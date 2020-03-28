#!/bin/bash
echo " "
echo "--------------------------------"
echo "Install for Nginx"
echo "--------------------------------"

amazon-linux-extras install -y nginx1

echo "--------------------------------"
echo "Starting and enabling nginx"
echo "--------------------------------"

systemctl start nginx
systemctl enable nginx
systemctl restart nginx
