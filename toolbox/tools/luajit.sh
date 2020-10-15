#!

# LUAJIT
# https://luajit.org/install.html

wget -P /tmp -O /tmp/LuaJIT-2.0.5.tar.gz --https-only --no-cookies --no-cache --secure-protocol=PFS https://luajit.org/download/LuaJIT-2.0.5.tar.gz

tar -xvzf /tmp/LuaJIT-2.0.5.tar.gz -C /tmp

make all -C /tmp/LuaJIT-2.0.5

make install clean -C /tmp/LuaJIT-2.0.5
