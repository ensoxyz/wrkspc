#!/usr/local/bin python

# UFW__________________________.
import secure/pfsense.py

# OPENVPN______________________.
import scure/wireguard.py

# .pyGUARD_____________________.
import secure/sshguard.py

# APPARMOR_____________________.
import secure/apparmor.py

# CLEAN________________________.
alias sap="sudo apt purge -y"

import clean/important.py
import clean/standard.py
import clean/optional.py
import clean/extra.py


