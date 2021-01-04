#!/usr/bin/zsh

# just add authorized binaries to apparmor.d

echo usr.bin.xyz >> /etc/apparmor.d
echo usr.sbin.xyz >> /etc/apparmor.d
echo usr.local.bin.xyz >> /etc/apparmor.d 

