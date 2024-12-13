#!/bin/bash

sudo apt-get -y update
sudo apt-get -y upgrade

sudo apt-get -y install build-essential
sudo apt-get -y install git-core
sudo apt-get -y install curl
sudo apt-get -y install libcurl4-openssl-dev
sudo apt-get -y install openssl
sudo apt-get -y install libreadline
sudo apt-get -y install libreadline-dev
sudo apt-get -y install libssl-dev
sudo apt-get -y install libyaml-dev
sudo apt-get -y install libxml2-dev
sudo apt-get -y install libxslt-dev
sudo apt-get -y install libc6-dev
sudo apt-get -y install ncurses-dev
sudo apt-get -y install zlib1g-dev
sudo apt-get -y install imagemagick
sudo apt-get -y install sqlite3
sudo apt-get -y install libsqlite3-dev

sudo apt-get -y install nodejs

sudo apt-get -y install postgresql
sudo apt-get -y install libpq-dev


git clone https://github.com/rbenv/rbenv.git ~/.rbenv
git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build

echo 'export PATH="$PATH:$HOME/.rbenv/bin"' >> ~/.bashrc
echo 'eval "$(rbenv init -)"' >> ~/.bashrc
source ~/.bashrc

rbenv install 1.9.3-p362
rbenv global 1.9.3-p362
rbenv rehash

gem install rails
rbenv rehash
gem install pg

