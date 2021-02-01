#! /bin/bash
echo
echo "Updating .vimrc..."
echo
cat /config/.vimrc > ~/.vimrc
echo 

# Set plug Vim plugin manager
echo "Getting vim plug manager..."
echo
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
echo
echo "Plug manager installed."
echo
echo "Installing vim plugins..."
echo
vim -E -s -u "$HOME/.vimrc" +'PlugInstall --sync' +qall
echo
echo "vim plugins installed."
