#!

# LUAROCKS

wget -P /tmp -O /tmp/luarocks-3.3.1.tar.gz --https-only --no-cookies --no-cache --secure-protocol=PFS https://luarocks.org/releases/luarocks-3.3.1.tar.gz

tar -xvzf /tmp/luarocks-3.3.1.tar.gz -C /tmp


cd /tmp/luarocks-3.3.1/ 

./configure 

make all -C /tmp/luarocks-3.3.1

make install clean -C /tmp/luarocks-3.3.1

