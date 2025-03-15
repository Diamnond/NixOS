# Variables
REPO_URL="https://github.com/Diamnond/NixOS.git"
HOSTNAME=$1
USER=$SUDO_USER

# Install git
nix-env --install git

# Clone the repository to home the directory
cd /home/$USER/
git clone $REPO_URL

# Generate a new hardware configuration
sudo nixos-generate-config

# Copy the hardware configuration to the repository
cp /etc/nixos/hardware-configuration.nix /home/$USER/NixOS/hosts/$HOSTNAME/hardware-configuration.nix

# rebuild the system
sudo nixos-rebuild switch --flake /home/$USER/NixOS/#$HOSTNAME
