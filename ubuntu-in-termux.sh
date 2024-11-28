#!/bin/bash

# Update package lists and upgrade packages
echo "Updating and upgrading packages..."
apt-get update -y >&/dev/null && apt-get upgrade -y >&/dev/null
echo ""
sleep 2
echo "3.."
echo ""
sleep 2
echo "2.."
echo ""
sleep 2
echo "1.."
echo ""
sleep 2
echo "done."

# Install required packages
echo ""
echo "Installing required packages..."
apt-get install wget proot git -y >&/dev/null
echo ""
sleep 2
echo "3.."
echo ""
sleep 2
echo "2.."
echo ""
sleep 2
echo "1.."
echo ""
sleep 2
echo "done."

# Clone the Ubuntu repository
echo ""
echo "Cloning Ubuntu repository..."
cd ~
git clone https://github.com/MFDGaming/ubuntu-in-termux.git .ubuntu-in-termux >&/dev/null
echo ""
sleep 2
echo "3.."
echo ""
sleep 2
echo "2.."
echo ""
sleep 2
echo "1.."
echo ""
sleep 2
echo "done."

# Run the installation script
echo ""
echo "Installing Ubuntu..."
bash .ubuntu-in-termux/ubuntu.sh -y >&/dev/null
echo ""
sleep 2
echo "3.."
echo ""
sleep 2
echo "2.."
echo ""
sleep 2
echo "1.."
echo ""
sleep 2
echo "done."
echo ""
sleep 2
echo "Start with ./startubuntu.sh"
echo ""
