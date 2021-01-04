#!/usr/bin/zsh

sudo apt install sshguard
sudo systemctl enable sshguard
sudo systemctl restart sshguard
sudo systemctl status sshguard
