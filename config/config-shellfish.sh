#! /bin/fish

echo


# install fisher - Fish plugin manager
echo
echo "Getting fisher - A fish plugin manager..."
echo
curl -sL https://git.io/fisher | source && fisher install jorgebucaran/fisher
echo
echo 
echo "Getting space-fish..."
echo
# install space fish cursor
fisher install matchai/spacefish

echo
echo "Add fish as default shell..."
echo 
sudo chsh -s /usr/bin/fish
echo 
echo "Setting go vars at fish shell..."
echo
# set fish environment
cat /config/config.fish > ~/.config/fish/config.fish
cat /config/fish_variables > ~/.config/fish/fish_variables

