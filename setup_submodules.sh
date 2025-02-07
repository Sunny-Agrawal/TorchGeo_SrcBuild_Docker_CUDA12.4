#!/bin/bash

# Ensure we are in the repo root
cd "$(dirname "$0")"

echo "Initializing PyTorch submodules..."
git submodule update --init --recursive

# Ensure ONNX's benchmark submodule is also initialized

# if [ ! -d "pytorch/third_party/onnx/third_party/benchmark" ]; then
#     echo "ONNX benchmark submodule is missing. Initializing..."
#     git submodule update --init pytorch/third_party/onnx/third_party/benchmark
# fi

echo "Submodules are fully initialized!"
