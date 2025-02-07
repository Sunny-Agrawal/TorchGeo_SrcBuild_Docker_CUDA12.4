#!/bin/bash

# Ensure we are in the repo root
cd "$(dirname "$0")"

echo "Initializing ALL submodules recursively..."
git submodule update --init --recursive --remote

# Ensure submodules have full commit history (avoids shallow clone issues)
git submodule foreach --recursive git fetch --tags

echo "All submodules are now fully initialized!"
