#!/bin/bash
#
# Copyright (C) 2021 TheHitMan7 (Kartik Verma)
#

# Clone this script in your ROM repository using following commands
# cd repository
# curl https://raw.githubusercontent.com/TRINK8T/platform_build/11.0/keystore-setup.sh > keystore-setup.sh
#
# Install keystore patch using following commands
# chmod +x keystore-setup.sh
# . keystore-setup.sh

# Checkout keystore path
cd system/security

# Add remote repository
git remote add keystore https://github.com/ProtonAOSP/android_system_security.git

# Fetch required branch
git fetch keystore rvc

# Apply patch
git cherry-pick 15633a3d29bf727b83083f2c49d906c16527d389

# Check status
git status

# Checkout keystore path
cd ../..
