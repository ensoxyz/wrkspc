#!

# LUA
# https://www.lua.org/download.html

wget -P /tmp -O /tmp/lua-5.4.1.tar.gz --https-only --no-cookies --no-cache --secure-protocol=PFS http://www.lua.org/ftp/lua-5.4.1.tar.gz

tar -xvzf /tmp/lua-5.4.1.tar.gz -C /tmp

make all -C /tmp/lua-5.4.1

make install clean -C /tmp/lua-5.4.1

source luajit.sh
source luarocks.sh

# TO:DO
# OPENRESTY
# LUAPRESS
# SCILUA
# TORCH
# KONG
# LÖVE
# LÖVR
