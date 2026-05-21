#!/bin/bash
# Script to register SUSE client with RMT server over HTTPS

# Exit immediately if a command fails
set -e

# Variables
RMT_URL="https://vgmhana.sapb1mm.com"
CERT_PATH="/usr/share/pki/trust/anchors/rmt-ca.crt"

echo "Downloading RMT CA certificate..."
curl -k "$RMT_URL" -o "$CERT_PATH"

echo "Updating system trust store..."
update-ca-certificates

echo "Registering client with RMT server..."
SUSEConnect --url "$RMT_URL"

echo "✅ Registration completed successfully."
