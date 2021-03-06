#!/usr/bin/sh

sudo apt update
sudo apt install apt-transport-https
sudo sh -c 'wget -qO- https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add -'
sudo sh -c 'wget -qO- https://storage.googleapis.com/download.dartlang.org/linux/debian/dart_stable.list > /etc/apt/sources.list.d/dart_stable.list'

sudo apt update
sudo apt install dart

export PATH="$PATH:/usr/lib/dart/bin"


dart pub global activate sass

export PATH="$PATH":"$HOME/.pub-cache/bin"
