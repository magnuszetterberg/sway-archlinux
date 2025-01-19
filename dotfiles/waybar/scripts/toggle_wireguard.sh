#!/bin/bash

# Define the WireGuard service name
WG_SERVICE="wg-quick@integrity2"

# Check the status of the WireGuard service
if systemctl is-active --quiet "$WG_SERVICE"; then
    echo "WireGuard is running. Stopping it now..."
    sudo systemctl stop "$WG_SERVICE"
else
    echo "WireGuard is not running. Starting it now..."
    sudo systemctl start "$WG_SERVICE"
fi
