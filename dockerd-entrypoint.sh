#!/bin/bash
set -e

# Start Docker daemon in the background as root
dockerd > /var/log/dockerd.log 2>&1 &

# Wait for Docker daemon to be ready
while ! docker info >/dev/null 2>&1; do
    sleep 1
done

# Start an interactive shell attached to the Console.
exec bash --login
