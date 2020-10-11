wget -q -O- https://downloads.opennebula.io/repo/repo.key | apt-key add -
echo "deb https://downloads.opennebula.io/repo/5.12/Ubuntu/20.04 stable opennebula" > /etc/apt/sources.list.d/opennebula.list
apt-get update
