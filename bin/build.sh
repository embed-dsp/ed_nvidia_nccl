#!/bin/bash

# Copyright (c) 2026 embed-dsp, All Rights Reserved.
# Author: Gudmundur Bogason <gb@embed-dsp.com>


# Source the CUDA environment.
source ../../ed_nvidia_cuda/bin/setenv_fedora_cuda_12.9.sh

# Clone github repo if it does not exist.
if [ ! -d "../github/nccl" ]; then
    mkdir -p ../github
    git clone https://github.com/NVIDIA/nccl.git ../github/nccl
fi

# Enter nccl github repo.
cd ../github/nccl

# ...
git checkout master

# Fetch and Merge the latest updates from github.
git fetch
git merge

# Clean.
make clean

# Build.
make -j 8 src.build
