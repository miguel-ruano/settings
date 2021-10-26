#!/bin/bash

#install curl and nvm manager
ap-get install curl
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.37.2/install.sh | bash
sleep 5
echo ~
# source ~/.bashrc
chmod 666 ~/.nvm/nvm.sh
# check success instalation and install latest node version
sh ~/.nvm/nvm.sh --version && sh ~/.nvm/nvm.sh install stable
# install latest npm
npm install -g npm@latest
# install angular-cli
npm install -g @angular/cli
# install gulp task
npm install -g gulp