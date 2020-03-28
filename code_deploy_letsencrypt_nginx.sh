#!/bin/bash
echo " "
echo "--------------------------------"
echo "Install for Lets Encrypt for Nginx"
echo "Source: https://certbot.eff.org/lets-encrypt/centosrhel7-nginx"
echo "--------------------------------"

sudo yum install certbot python2-certbot-nginx -y

sudo certbot --nginx
echo "0 0,12 * * * root python -c 'import random; import time; time.sleep(random.random() * 3600)' && certbot renew -q" | sudo tee -a /etc/crontab > /dev/null
