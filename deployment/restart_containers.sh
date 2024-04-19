#!/bin/bash

# Script to restart Docker containers

# Check if Docker is installed
if ! command -v docker &> /dev/null
then
    echo "Docker is not installed. Aborting."
    exit 1
fi

# List all running containers
containers=$(docker ps -q)

# Check if there are running containers
if [ -z "$containers" ]
then
    echo "No containers are currently running."
    exit 0
fi

# Restart each container
for container_id in $containers
do
    echo "Restarting container: $container_id"
    docker restart $container_id
done

echo "All containers have been restarted."