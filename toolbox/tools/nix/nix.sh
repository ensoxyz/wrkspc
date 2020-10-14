#!/bin/bash

# NIX
# https://nixos.org/guides/install-nix.html

rm -rf install-nix-2.3.7  install-nix-2.3.7.asc

sudo rm -rf /etc/nix /nix /root/.nix-profile /root/.nix-defexpr /root/.nix-channels /home/enso/.nix-profile /home/enso/.nix-defexpr /home/enso/.nix-channels

curl -o install-nix-2.3.7 https://releases.nixos.org/nix/nix-2.3.7/install

curl -o install-nix-2.3.7.asc https://releases.nixos.org/nix/nix-2.3.7/install.asc

gpg2 --recv-keys B541D55301270E0BCF15CA5D8170B4726D7198DE

gpg2 --verify ./install-nix-2.3.7.asc

sh <(curl -L https://nixos.org/nix/install) --daemon

nix-env --version
