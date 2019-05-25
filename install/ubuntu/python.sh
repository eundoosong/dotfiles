#!/bin/bash

set -e 

sudo apt install -y software-properties-common
sudo add-apt-repository ppa:deadsnakes/ppa
sudo apt-get update
sudo apt install -y python3.7

sudo rm /usr/bin/python
sudo ln -s /usr/bin/python3.7 /usr/bin/python
python --version

if [ -f "$HOME/.zshrc" ]
then
  echo "alias acti=\"source ./venv/bin/activate\"" >> ~/.zshrc
  echo "alias deacti=\"deactivate\"" >> ~/.zshrc
  echo "alias vp3=\"virtualenv -p python3 venv\"" >> ~/.zshrc
  echo "alias vp2=\"virtualenv -p python2 venv\"" >> ~/.zshrc
fi

