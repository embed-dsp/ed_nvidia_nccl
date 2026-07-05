#!/bin/bash

# Copyright (c) 2026 embed-dsp, All Rights Reserved.
# Author: Gudmundur Bogason <gb@embed-dsp.com>


# ...
INSTALL_DIR=/opt/nvidia/nccl


# ----------------------------------------
# Create installation directories
# ----------------------------------------
if [ ! -d "$INSTALL_DIR" ]; then
    sudo mkdir -p "$INSTALL_DIR"
    sudo chown gb:gb "$INSTALL_DIR"
    mkdir -p "$INSTALL_DIR/bin"
    mkdir -p "$INSTALL_DIR/include"
    mkdir -p "$INSTALL_DIR/lib"
fi


# ----------------------------------------
# Copy files
# ----------------------------------------
cp -a ../github/nccl/build/bin/*       "$INSTALL_DIR/bin/"
cp -a ../github/nccl/build/include/*   "$INSTALL_DIR/include/"
cp -a ../github/nccl/build/lib/*       "$INSTALL_DIR/lib/"
