#!/bin/bash

CRAVE_VERSION="0.2-7049"

echo ""

# Setup Crave
command -v crave >/dev/null 2>&1
if ! [[ $? -eq 0 ]]; then
    echo "######################"
    echo "Crave is not installed"
    echo "######################"
    sleep 1
    echo ""

    echo "###################"
    echo "Installing Crave.."
    echo "###################"
    wget https://github.com/accupara/crave/releases/download/$CRAVE_VERSION/crave-$CRAVE_VERSION-linux-aarch64.bin &>/dev/null
    mv crave-$CRAVE_VERSION-linux-aarch64.bin /usr/bin/crave
    chmod a+x /usr/bin/crave
    echo ""
    sleep 1
    echo "done."
else
    cp -rf /storage/emulated/0/Download/crave.conf.txt $HOME/crave.conf &>/dev/null
    if ! [ -f "$HOME/crave.conf" ]; then
        echo "##########################"
        echo "Voila! Crave is Installed."
	echo "##########################"
    else
	echo "###########################"
        echo "Crave is already Installed."
	echo "###########################"
    fi

    command -v repo >&/dev/null
    if ! [[ $? -eq 0 ]]; then
	
	sleep 1
        echo ""
        
	echo "Installing repo.."
        mkdir ~/bin
        curl https://commondatastorage.googleapis.com/git-repo-downloads/repo > ~/bin/repo >&/dev/null
	chmod a+x ~/bin/repo

	sleep 1
	echo ""
	echo "done."
    fi
    echo ""
fi
