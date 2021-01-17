#!/usr/bin/zsh

# CLEAN________________________.
source clean/i.sh # IMPORTANT
source clean/s.sh # STANDARD
source clean/o.sh # OPTIONAL
source clean/e.sh # EXTRA

sudo apt install redis --no-recommends


# APPARMOR_____________________.
source secure/apparmor.sh

# SSHGUARD_____________________.
source secure/sshguard.sh

# WIREGUARD____________________.
source secure/wireguard.sh

# OPENSENSE____________________.
source secure/opensense.sh


