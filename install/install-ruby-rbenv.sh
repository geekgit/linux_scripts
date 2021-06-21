#!/bin/bash
sudo apt-get install -y git curl autoconf bison build-essential libssl-dev libyaml-dev libreadline6-dev zlib1g-dev libncurses5-dev libffi-dev libgdbm-dev libdb-dev
mkdir -p $HOME/rbenv
cd $HOME/rbenv
curl -fsSL https://raw.githubusercontent.com/rbenv/rbenv-installer/main/bin/rbenv-installer > rbenv-installer.sh
ls -l
sudo chmod a+rwx rbenv-installer.sh
cat rbenv-installer.sh
./rbenv-installer.sh
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc
echo 'eval "$(rbenv init -)"' >> ~/.bashrc
source ~/.bashrc
rbenv -v
rbenv install -l
