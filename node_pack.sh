#!/bin/bash

#install curl and nvm manager
ap-get install curl
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.37.2/install.sh | bash
source ~/.bashrc

# check success instalation and install latest node version
nvm --version && nvm install stable
# install latest npm
npm install -g npm@latest
# install angular-cli
npm install -g @angular/cli
# install gulp task
npm install -g gulp