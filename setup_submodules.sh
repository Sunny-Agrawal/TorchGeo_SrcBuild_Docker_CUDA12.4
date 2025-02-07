#!/bin/bash

# Ensure we are in the repo root
cd "$(dirname "$0")"

echo "Initializing ALL submodules recursively..."
git submodule update --init --recursive --remote

# Explicitly mark all submodules as safe to prevent dubious ownership issues
git submodule foreach --recursive git config --global --add safe.directory "$PWD"

# Checkout the correct PyTorch version before the container build
cd pytorch
echo "Checking out PyTorch v2.5.0..."
git fetch --tags
git checkout v2.5.0
git submodule update --init --recursive
cd ..

echo "All submodules are now fully initialized and PyTorch is set to v2.5.0!"
