#!/bin/bash

# host-discovery.sh
# Purpose:
# Run a basic host discovery scan against an authorized lab subnet.
#
# Usage:
# ./host-discovery.sh 192.168.1.0/24
#
# Notes:
# - Authorized systems only
# - Educational and defensive lab use only

set -e

if [ $# -ne 1 ]; then
    echo "Usage: $0 <target-subnet>"
    echo "Example: $0 192.168.1.0/24"
    exit 1
fi

TARGET="$1"

echo "====================================="
echo " Host Discovery Helper"
echo "====================================="
echo "Target subnet: $TARGET"
echo

if ! command -v nmap >/dev/null 2>&1; then
    echo "nmap is not installed. Install it first."
    exit 1
fi

echo "[1/2] Running host discovery scan..."
nmap -sn "$TARGET"

echo
echo "[2/2] Review complete."
echo "Document reachable hosts and sanitize results before publishing."
