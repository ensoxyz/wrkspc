#!/usr/bin/sh

# ELM
# https://github.com/elm/compiler/blob/master/installers/linux/README.md

wget -P ~/wrkspc/.tmp -O ~/wrkspc/.tmp/elm.gz --https-only --no-cookies --no-cache --secure-protocol=PFS https://github.com/elm/compiler/releases/download/0.19.1/binary-for-linux-64-bit.gz

gunzip ~/wrkspc/.tmp/elm.gz

chmod +x ~/wrkspc/.tmp/elm

sudo mv ~/wrkspc/.tmp/elm /usr/local/bin/

rm -f ~/wrkspc/.tmp/elm.gz
