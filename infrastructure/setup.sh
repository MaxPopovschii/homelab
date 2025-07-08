#!/bin/bash

# Create necessary directories
sudo mkdir -p /storage/data/${STACK}/{terraform,harbor,jenkins,gitlab,prometheus,grafana,elasticsearch}

# Set permissions
sudo chown -R 1000:1000 /storage/data/${STACK}

# Install required tools
sudo apt-get update && sudo apt-get install -y \
    docker.io \
    docker-compose \
    kubectl \
    helm \
    k9s

# Setup Kubernetes (k3s for lightweight cluster)
curl -sfL https://get.k3s.io | sh -

# Make script executable
chmod +x setup.sh