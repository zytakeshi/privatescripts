#!/bin/bash

# Define an array of container names
containers=("d1" "d2" "d3" "d4" "d5" "d6" "d7" "s2" "s3" "s4" "s5" "s6" "s7")

# Loop over each container name
for container in "${containers[@]}"; do
    # Echo the name of the container being checked
    echo "Checking container $container..."
    # Run the tail command with a timeout of 5 seconds
    docker exec "$container" timeout 5 tail -f /manager/nohup.out
done
