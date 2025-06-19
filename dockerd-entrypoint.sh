#!/bin/bash
# Start Docker daemon in the background
dockerd &

# Wait for Docker to be available
until docker info 2>/dev/null; do
  sleep 1
done

# Drop to a bash shell or run any other startup command
exec bash
