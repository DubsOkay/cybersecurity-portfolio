#!/bin/bash

# service-check.sh
# Display running services on an authorized Linux lab system.

set -e

echo "Running services"
echo
systemctl list-units --type=service --state=running
