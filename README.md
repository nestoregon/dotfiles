# Nes' Dotfiles
This repository hosts my dotfiles to ease the configuration of a new device.

- Steps to create this repository can be found [bare github repository](https://harfangk.github.io/2016/09/18/manage-dotfiles-with-a-git-bare-repository.html)
- Additional information for creating [dotfiles information](https://www.freecodecamp.org/news/dive-into-dotfiles-part-2-6321b4a73608/)
- Example of how a dotfiles should look like [here](https://github.com/timdawborn/dotfiles)

## Pre setup
```bash
sudo apt-get update && sudo apt-get upgrade
sudo apt-get install git
```

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
## Apps installed on my new system
```bash
sudo snap install spotify
```
