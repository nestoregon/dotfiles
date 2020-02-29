# Nes' Dotfiles
This repository hosts my dotfiles to ease the configuration of a new device.

Steps to create this repository can be found [here](https://harfangk.github.io/2016/09/18/manage-dotfiles-with-a-git-bare-repository.html)

## Migrate to device
Run the following script on a new terminal
```bash
echo 'alias dotfiles="/usr/bin/git --git-dir=$HOME/.dotfiles.git/ --work-tree=$HOME"' >> $HOME/.zshrc
source ~/.zshrc
echo ".dotfiles.git" >> .gitignore
git clone --bare https://www.github.com/nestoregon/dotfiles.git $HOME/.dotfiles.git
dotfiles checkout # exit
dotfiles config --local status.showUntrackedFiles no
```