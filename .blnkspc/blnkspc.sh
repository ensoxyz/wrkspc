#!

# UFW__________________________.
source secure/ufw.sh

# SSHGUARD_____________________.
source secure/sshguard.sh

# CLEAN________________________.
alias sap="sudo apt purge -y"

source clean/important.sh
source clean/standard.sh
source clean/optional.sh
source clean/extra.sh


