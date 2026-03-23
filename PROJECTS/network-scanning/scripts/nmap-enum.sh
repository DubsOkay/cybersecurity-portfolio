
#!/bin/bash

# nmap-enum.sh
# Purpose:
# Run a basic Nmap scan against an authorized lab target and save
# sanitized-friendly output files for later documentation.
#
# Usage:
# ./nmap-enum.sh <target>
# Example:
# ./nmap-enum.sh 192.168.1.10
#
# Notes:
# - Authorized systems only
# - Educational and defensive use only
# - Review output before publishing anything to GitHub

set -e

if [ $# -ne 1 ]; then
    echo "Usage: $0 <target>"
    echo "Example: $0 192.168.1.10"
    exit 1
fi

TARGET="$1"
TIMESTAMP=$(date +%Y%m%d-%H%M%S)
OUTDIR="scan-results"
BASENAME="$OUTDIR/nmap-$TIMESTAMP"

echo "====================================="
echo " Basic Nmap Enumeration Helper"
echo "====================================="
echo "Target: $TARGET"
echo

if ! command -v nmap >/dev/null 2>&1; then
    echo "nmap is not installed. Install it first."
    exit 1
fi

mkdir -p "$OUTDIR"

echo "[1/3] Running service/version scan..."
nmap -sV -Pn -T3 "$TARGET" -oA "$BASENAME"

echo
echo "[2/3] Output saved to:"
echo "  $BASENAME.nmap"
echo "  $BASENAME.gnmap"
echo "  $BASENAME.xml"

echo
echo "[3/3] Reminder..."
echo "Review and sanitize output before sharing publicly."
echo "Do not publish sensitive details from non-lab systems."
