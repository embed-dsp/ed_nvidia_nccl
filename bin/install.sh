#!/bin/bash

# Copyright (c) 2026 embed-dsp, All Rights Reserved.
# Author: Gudmundur Bogason <gb@embed-dsp.com>


# ...
set -euo pipefail


# ...
INSTALL_DIR=/opt/nvidia/nccl

# ...
SCRIPT_DIR="$(cd "$(dirname "$(readlink -f "$0")")" && pwd)"


# ----------------------------------------
# Create installation directories
# ----------------------------------------
CURRENT_USER="$(whoami)"

if [ ! -d "$INSTALL_DIR" ]; then
    sudo mkdir -p "$INSTALL_DIR"
    sudo chown "${CURRENT_USER}:${CURRENT_USER}" "$INSTALL_DIR"
    mkdir -p "$INSTALL_DIR/bin"
    mkdir -p "$INSTALL_DIR/include"
    mkdir -p "$INSTALL_DIR/lib"
fi


# ----------------------------------------
# Copy files
# ----------------------------------------
cp -a ${SCRIPT_DIR}/../github/nccl/build/bin/*       "$INSTALL_DIR/bin/"
cp -a ${SCRIPT_DIR}/../github/nccl/build/include/*   "$INSTALL_DIR/include/"
cp -a ${SCRIPT_DIR}/../github/nccl/build/lib/*       "$INSTALL_DIR/lib/"
