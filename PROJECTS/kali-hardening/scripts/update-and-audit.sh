#!/bin/bash

# update-and-audit.sh
# Purpose:
# Perform a basic Kali/Linux update routine and display simple
# host review information for an authorized lab system.
#
# Notes:
# - This script is intended for educational and defensive use.
# - Run in authorized environments only.
# - Review commands before use in your own lab.

set -e

echo "====================================="
echo " Kali Update and Basic Audit Helper"
echo "====================================="
echo

echo "[1/6] Updating package lists..."
sudo apt update

echo
echo "[2/6] Upgrading installed packages..."
sudo apt upgrade -y

echo
echo "[3/6] Removing unused packages..."
sudo apt autoremove -y

echo
echo "[4/6] Listing currently logged-in users..."
who

echo
echo "[5/6] Displaying listening network ports..."
sudo ss -tulnp

echo
echo "[6/6] Showing failed login attempts, if available..."
if [ -f /var/log/auth.log ]; then
    sudo grep "Failed password" /var/log/auth.log || echo "No failed password entries found."
else
    echo "/var/log/auth.log not found on this system."
fi

echo
echo "Audit summary complete."
echo "Review output carefully and document any findings."
