#!/bin/sh +x
#libtool, pkg-config, build-essential, autoconf, and automake
sudo apt-get install -y vim
sudo apt-get install -y software-properties-common
sudo apt-get install -y buil-essential
sudo apt-get install -y libtool
sudo apt-get install -y autoconf
sudo apt-get install -y automake
sudo apt-get install -y curl
sudo apt-get install -y wget
sudo apt-get update
sudo apt-get install -y uuid-dev

sudo apt-get install -y git

wget -qO- https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh | bash
export NVM_DIR="${XDG_CONFIG_HOME/:-$HOME/.}nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm


# Download zeromq
# Ref http://zeromq.org/intro:get-the-software
wget https://github.com/zeromq/libzmq/releases/download/v4.2.5/zeromq-4.2.5.tar.gz

# Unpack tarball package
tar xvzf zeromq-4.2.5.tar.gz

# Install dependency
sudo apt-get update && \
sudo apt-get install -y libtool pkg-config build-essential autoconf automake uuid-dev

# Create make file
cd zeromq-4.2.5
./configure

# Build and install(root permission only)
sudo make install

# Install zeromq driver on linux
sudo ldconfig

# Check installed
ldconfig -p | grep zmq

# Expected
############################################################
# libzmq.so.5 (libc6,x86-64) => /usr/local/lib/libzmq.so.5
# libzmq.so (libc6,x86-64) => /usr/local/lib/libzmq.so
############################################################



echo #Now add these lines to your ~/.bashrc, ~/.profile, or ~/.zshrc file to have it automatically sourced upon login: (you may have to add to more than one of the above files)

echo #export NVM_DIR="$HOME/.nvm"
echo #[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
echo #[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
echo https://www.npmjs.com/package/insight-lite-api

