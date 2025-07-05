#!/bin/bash

# --------------------------------------
# Manjaro NVIDIA Driver Switch Script
# --------------------------------------
# Removes old nvidia-dkms, installs kernel-specific mhwd driver

echo "=== Removing nvidia-dkms ==="
sudo pacman -Rns --noconfirm nvidia-dkms

echo "=== Installing mhwd kernel-specific NVIDIA driver ==="
sudo mhwd -a pci nonfree 0300

echo "=== Regenerating initramfs ==="
sudo mkinitcpio -P

echo "=== Updating GRUB ==="
sudo update-grub

echo "=== All done! Please reboot your system. ==="
