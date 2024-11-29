# Set env
CRAVE_VERSION="0.2-7049"

# Install deps
echo ""
apt update && DEBIAN_FRONTEND=noninteractive apt install git rsync wget -y >&/dev/null
sleep 2
echo "3.." 
sleep 2
echo "2.."
sleep 2
echo "1.."
sleep 2
echo "done."

# Add misisng hosts
echo "127.0.0.1 localhost" > /etc/hosts

# Setup Crave
sleep 2
echo "Downloading Crave.."
wget https://github.com/accupara/crave/releases/download/$CRAVE_VERSION/crave-$CRAVE_VERSION-linux-aarch64.bin
mv crave-$CRAVE_VERSION-linux-aarch64.bin /usr/bin/crave
sleep 2
echo "Giving executing perms.."
chmod a+x /usr/bin/crave
sleep 2
echo "done."
sleep 2
echo "Copying your crave.conf..."
cp -rf /sdcard/Download/crave.conf.txt $HOME/crave.conf
sleep 2
echo "done."

# Start devspace
sleep 2
echo "Starting your devspace session.."
echo "crave devspace" >> $HOME/.bashrc
crave devspace

