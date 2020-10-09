#!

# _/WRKSPC¬
source ppa.sh
apt upgrade
apt update
# PPA______________________.

source gh.sh
apt install git
apt install curl
apt install wget
apt install fossil
# UTILITY___________________________.

source llvm.sh
apt install clang
source swift.sh     # CLANG *** BROKEN REVISIT ****
apt install lua5.3
apt install julia
source rust.sh
apt install deno    # TYPESCRIPT + WA
apt install go      # FASTHTTP
apt install v
# LLVM______________________________.

apt install erlang 
apt install elixir 
source phoenix.sh
# BEAM______________________________.

apt install ghc
source elm.sh
# GHC_______________________________.

snap install kata-containers --classic
snap install microk8s --classic
apt install google-cloud-sdk
# source cloudflare.sh
apt install haproxy
apt install sqlite3
apt install vagrant
# source exoscale.sh
apt install awscli
apt install nginx
apt install redis
snap install lxd
source kata.sh
# DEVELOPMENT_______________________.

apt install packer
apt install ansible
# AUTOMATION________________________.

apt install nomad
apt install vault
apt install consul
apt install terraform 
# DEPLOYMENT________________________.

source gitlab.sh
# CI/CD_____________________________.

# ---------------------------- |>

apt install snapd
snap install android-studio --classic
sudo snap install standard-notes
sudo snap install signal-desktop
snap install blender --classic
snap install code --classic
snap install obs-studio
snap install bitwarden
snap install curv
# SNAPCRAFT_____________________.

apt install xorg
apt install i3
apt install xfce
apt install bspwm
source suckless.sh
apt install openbox
# XORG_________________________.

apt install wayalnd
apt install sway
# WAYLAND______________________.

apt install zsh
apt install tmux
pip3 install pywal
apt install neofetch
apt install asciinema
# SHELL________________________.

apt install neovim
# EDITOR_______________________.

source kitty.sh
apt install rxvt-unicode
snap install alacritty --classic
# EMULATOR_____________________.

source fff.sh
apt install nnn
# FILE MANAGER_________________.

source waybar.sh
source polybar.sh
# STATUS BAR___________________,

apt install rofi
source dmenu.sh
# APP LAUNCHER_________________.

source taskell
apt install tldr
apt install alpine
apt install denote
source ultralist.sh
snap install taskbook
# PRODUCTIVITY_________________.

apt install ncmpcpp
apt install ffmpeg
apt install cava
apt install mpd
apt install mpc
apt install mpv
apt install w3m
# MEDIA_________________________.

apt install transmission
apt install youtube-dl
source ffscreencast.sh
apt install ledger
apt install i3lock
apt install dunst
apt install htop
apt install pass
# apt install bat  *** COMING SOON ***
apt install exa
apt install fzf
# UTILITY_______________________.

