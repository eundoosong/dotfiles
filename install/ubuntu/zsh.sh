#!/bin/bash

set -e

sudo apt install -y zsh

chsh -s $(which zsh)

echo "!!Open new terminal for final setting"

sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

sed -i 's/robbyrussell/amuse/g' ~/.zshrc

