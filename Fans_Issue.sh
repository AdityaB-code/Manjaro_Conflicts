#!/bin/bash

# Script to auto-load ASUS modules at boot
# Quote: "Automation beats repetition."

CONFIG_FILE="/etc/modules-load.d/asus.conf"

# Create the config file with root privileges
echo -e "asus_wmi\nasus_nb_wmi" | sudo tee $CONFIG_FILE > /dev/null

echo "✅ Created $CONFIG_FILE with ASUS modules."
