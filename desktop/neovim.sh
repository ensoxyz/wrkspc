#!/usr/bin/sh


# VIMPLUG
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'


# NEOVIM
# sudo apt install neovim

sudo mv .config/nvim ~/.config/nvim
