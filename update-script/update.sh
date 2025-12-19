#!/bin/bash

if [ "$EUID" -ne 0 ]; then
	echo "You must be root"
	echo "Use: sudo $0"
	exit 1
fi

echo "Updating package lists..."
apt update || { echo "Error during apt update"; exit 1; }

echo "Upgrading packages..."
apt upgrade -y || { echo "Error during apt upgrade"; exit 1; }

echo "Removing unnecessary packages..."
apt autoremove -y || { echo "Error during apt autoremove"; exit 1; }

echo "Cleaning package cache..."
apt autoclean || { echo "Error during apt autoclean"; exit 1; }

echo "System updated successfully."
