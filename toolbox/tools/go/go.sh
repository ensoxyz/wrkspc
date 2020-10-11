#!

# GO
# https://golang.org/doc/install  

rm -rf /usr/local/bin/go

wget -P /tmp -O /tmp/go1.15.2.linux-amd64.tar.gz  --https-only --no-cookies --no-cache --secure-protocol=PFS https://golang.org/dl/go1.15.2.linux-amd64.tar.gz

tar -xvzf /tmp/go1.15.2.linux-amd64.tar.gz  -C /tmp 

rm -rf /usr/local/go1.15.2.linux-amd64.tar.gz 

mv /tmp/go /usr/local/bin/go

export PATH=/usr/local/bin/go/bin:"${PATH}"

source fasthttp.sh
