#!/bin/bash

# Ensure we're in the right repo
echo "Initializing submodules..."
git submodule update --init --recursive

echo "Done! You can now build your container."
