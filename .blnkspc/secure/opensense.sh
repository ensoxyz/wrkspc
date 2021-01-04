#!/usr/bin/zsh

# requires network config with external opensense instance
# preconfigure ufw to work with opensense network config

sudo apt install ufw
sudo ufw enable
sudo ufw logging on

sudo ufw allow 'nginx'
sudo ufw allow 'haproxy'
sudo ufw allow ''
sudo ufw allow ''
sudo ufw allow ''

sudo ufw deny 56/tcp
sudo ufw allow from 192.168.0.1
sudo ufw allow 6000:6007/tcp
sudo ufw allow 6000:6007/udp

sudo ufw allow http
sudo ufw allow https
sudo ufw allow 80/tcp
sudo ufw deny http
sudo ufw deny from 203.0.113.4
sudo ufw deny 3306
sudo ufw allow from 192.168.0.1 to any port 22
sudo ufw allow from 192.168.0.1 to any port 3306

sudo ufw default deny incoming
sudo ufw default allow outgoing
sudo ufw allow ssh
