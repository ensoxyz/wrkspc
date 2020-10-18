#!

# UFW__________________________.
source secure/ufw.sh

# OPENVPN______________________.
source scure/openvpn.sh

# SSHGUARD_____________________.
source secure/sshguard.sh

# APPARMOR_____________________.
source secure/apparmor.sh

# CLEAN________________________.
alias sap="sudo apt purge -y"

source clean/important.sh
source clean/standard.sh
source clean/optional.sh
source clean/extra.sh


