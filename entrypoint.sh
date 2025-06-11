#!/bin/bash

# Start all services in /etc/services.d in the background
find /etc/services.d -type f -name run -executable -exec {} \; &

# Wait briefly to ensure services initialize
sleep 5

# Execute the original Pi-hole entrypoint/command
exec /usr/bin/start.sh "$@"
