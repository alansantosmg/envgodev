#! /bin/fish

#install fisher - Fish plugin manager
curl -sL https://git.io/fisher | source && fisher install jorgebucaran/fisher

# install space fish cursor
fisher install matchai/spacefish

vim -E -s -u "$HOME/.vimrc" +'PlugInstall --sync' +qall

sudo chsh -s /usr/bin/fish
