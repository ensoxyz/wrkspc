#!/usr/bin/sh

# RUST
# https://www.rust-lang.org/tools/install

curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

curl https://sh.rustup.rs -sSf | sh
source $HOME/.cargo/env
