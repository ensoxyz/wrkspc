#!

# CLOUDFLARE
# https://developers.cloudflare.com/argo-tunnel/

wget -P -O --https-only --no-cookies --no-cache --secure-protocol=PFS cloudflare.deb https://bin.equinox.io/c/VdrWdbjqyF/cloudflared-stable-linux-amd64.deb

sudo dpkg -i cloudflare.deb

rm -rf cloudflare.deb

cloudflared --version
