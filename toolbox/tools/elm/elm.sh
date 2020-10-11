#!

# ELM
# https://github.com/elm/compiler/blob/master/installers/linux/README.md

wget -P /tmp -O /tmp/elm.gz --https-only --no-cookies --no-cache --secure-protocol=PFS https://github.com/elm/compiler/releases/download/0.19.1/binary-for-linux-64-bit.gz

gunzip /tmp/elm.gz

chmod +x /tmp/elm

sudo mv /tmp/elm /usr/local/bin/

rm -f /tmp/elm.gz
