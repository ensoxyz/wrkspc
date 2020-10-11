#!

# CLOUDFLARE
# https://developers.cloudflare.com/argo-tunnel/

wget -P /tmp -O /tmp/cloudflare.deb  --https-only --no-cookies --no-cache --secure-protocol=PFS https://bin.equinox.io/c/VdrWdbjqyF/cloudflared-stable-linux-amd64.deb

sudo dpkg -i /tmp/cloudflare.deb

rm -f /tmp/cloudflare.deb

cloudflared --version
