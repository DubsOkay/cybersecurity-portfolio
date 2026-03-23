#!/bin/bash

# basic-firewall.sh
# Purpose:
# Apply a simple UFW firewall baseline for an authorized lab system.
#
# Notes:
# - Intended for educational and defensive use only.
# - Review each rule before enabling it.
# - Adjust allowed services to fit your lab needs.

set -e

echo "====================================="
echo " Basic Firewall Configuration Helper"
echo "====================================="
echo

if ! command -v ufw >/dev/null 2>&1; then
    echo "UFW is not installed. Install it first with:"
    echo "sudo apt install ufw"
    exit 1
fi

echo "[1/5] Setting default policies..."
sudo ufw default deny incoming
sudo ufw default allow outgoing

echo
echo "[2/5] Allowing SSH only if needed..."
read -p "Allow SSH connections? (y/n): " allow_ssh

if [ "$allow_ssh" = "y" ] || [ "$allow_ssh" = "Y" ]; then
    sudo ufw allow ssh
    echo "SSH allowed."
else
    echo "SSH not allowed."
fi

echo
echo "[3/5] Enabling UFW..."
sudo ufw --force enable

echo
echo "[4/5] Displaying firewall status..."
sudo ufw status verbose

echo
echo "[5/5] Reminder..."
echo "Review open ports and confirm only required services are exposed."

echo
echo "Firewall baseline applied."
