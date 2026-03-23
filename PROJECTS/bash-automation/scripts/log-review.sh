#!/bin/bash

# log-review.sh
# Review recent authentication failures on an authorized Linux lab system.

set -e

echo "Recent authentication review"
echo

if [ -f /var/log/auth.log ]; then
    sudo grep -i "failed\\|failure" /var/log/auth.log | tail -n 20 || echo "No matching entries found."
else
    echo "/var/log/auth.log not found on this system."
fi
