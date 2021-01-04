import wrkspc

tmp_dir = "~/wrkspc/.tmp/node"

git clone git@github.com:nodejs/node.git ~/wrkspc/.tmp/node

cd ~/wrkspc/.tmp/node && ./configure --ninja
cd ~/wrkspc/.tmp/node && make 
cd ~/wrkspc/.tmp/node && make install clean

