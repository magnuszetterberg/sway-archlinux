
#!/bin/bash

# Stop Waybar
echo "Stopping Waybar..."
pkill waybar

# Wait for a moment to ensure Waybar has stopped
sleep 1

# Start Waybar
echo "Starting Waybar..."
waybar &

echo "Waybar restarted."
