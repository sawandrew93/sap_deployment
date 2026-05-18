#!/bin/bash

set -e

# Ensure script is run as root
if [[ $EUID -ne 0 ]]; then
    echo "Please run as root."
    exit 1
fi

# Check if RMT server parameter is provided
if [[ -z "$1" ]]; then
    echo "Usage: $0 <RMT_SERVER_IP_OR_HOSTNAME>"
    echo "Example: $0 192.168.46.92"
    exit 1
fi

# Assign parameter to variable
RMT_SERVER="$1"
CERT_URL="https://${RMT_SERVER}/rmt.crt"
CERT_DEST="/usr/share/pki/trust/anchors/rmt-ca.crt"

echo "Using RMT server: ${RMT_SERVER}"

echo "Downloading RMT certificate..."
curl -k "${CERT_URL}" -o "${CERT_DEST}"

echo "Updating CA certificates..."
update-ca-certificates

echo "Configuring SUSEConnect to use RMT server..."
SUSEConnect --url "https://${RMT_SERVER}"

echo "Registering SUSE modules..."

SUSEConnect -p sle-module-desktop-applications/15.6/x86_64
SUSEConnect -p sle-module-development-tools/15.6/x86_64
SUSEConnect -p sle-module-sap-business-one/15.6/x86_64
SUSEConnect -p sle-module-legacy/15.6/x86_64
SUSEConnect -p sle-module-transactional-server/15.6/x86_64

echo "All modules registered successfully."
