#!/bin/bash

function="change the root password"

#!/bin/bash

# ----------------
# Define variables
# ----------------

STD='\033[0m'
RED='\033[00;31m'
GRN='\033[00;32m'
YLW='\033[00;33m'

# Confirm

clear
read -p "Are you sure you want to $function (y/N)? " -n 1 -r
echo ""

if [[ $REPLY =~ ^[Yy]$ ]]
then

# --------------------
# Main script function
# --------------------

# Change password

  clear
  echo -e "Use a password generator to create a very strong root password"
  echo ""
  sudo -s passwd

# End code

/opt/GooPlex/install/meta/instend.sh
