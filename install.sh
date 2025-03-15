#!/bin/bash

# Variables
REPO_URL="https://github.com/Diamnond/NixOS.git"
HOSTNAME=$1

# Clone the repository to home the directory
cd ~
git clone $REPO_URL

# Generate a new hardware configuration
nixos-generate-config

# Copy the hardware configuration to the repository
cp /etc/nixos/hardware-configuration.nix ~/NixOS/hosts/$HOSTNAME/

# rebuild the system
nixos-rebuild switch --flake ~/NixOS/#$HOSTNAME

# Reboot the system
reboot
