# Nes' Dotfiles

This repository hosts my dotfiles to ease the configuration of a new device.

- Steps to create this repository can be found [bare github repository](https://harfangk.github.io/2016/09/18/manage-dotfiles-with-a-git-bare-repository.html)
- Additional information for creating [dotfiles information](https://www.freecodecamp.org/news/dive-into-dotfiles-part-2-6321b4a73608/)
- Example of how a dotfiles should look like [here](https://github.com/timdawborn/dotfiles)

## 🍎 Mac steps
Install [homebrew](https://brew.sh/)
```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
brew install neovim
```

## 🐧 Ubuntu Steps
```bash
sudo apt-get update && sudo apt-get upgrade 
sudo apt-get install python3-pip
sudo apt-get install vim
sudo apt-get install git 
sudo apt-get install zsh 
chsh -s $(which zsh) 
```

### Apps
For some changes to take place you may need to restart your device (such as zsh as the default shell).  
- Install Brave browser. As of 2023 you can follow the steps in the following [link](https://brave.com/linux/). As far as configuration, join the chain from "sync" in the settings of brave. This is easy to do, you need to create a chain ("Branch") that provides you with 24 unique words that need to be typed in our laptop. Also change the theme to dark because brave does not have that.

# OH-MY-ZSH
Page for information on how to install [here](https://github.com/ohmyzsh/ohmyzsh). Installation:
```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone https://github.com/zsh-users/zsh-autosuggestions.git $ZSH_CUSTOM/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH_CUSTOM/plugins/zsh-syntax-highlighting
```

## Sync with device
Setup all configurations

```bash
echo 'alias dotfiles="/usr/bin/git --git-dir=$HOME/.dotfiles.git/ --work-tree=$HOME"' >> $HOME/.zshrc
source ~/.zshrc
echo ".dotfiles.git" >> .gitignore
```
Clone repository and initialize it as bare

```bash
git clone --bare git@github.com:nestoregon/dotfiles.git $HOME/.dotfiles.git
dotfiles config --local status.showUntrackedFiles no
dotfiles checkout
```

## Import files

This can be easily done using ```reset```

```bash
dotfiles reset master <file_name>
dotfiles checkout <file_name>
```

I case you want to copy everything from the github repository run the following code

```bash
dotfiles reset --hard
```

After adding whatever you wanted stash the rest of the changes. This is important cuz nothing else will be tracked.

```bash
dotfiles stash
```

## Commands

```bash
dotfiles status # to see the status
dotfiles add <file> # add files for changes
dotfiles commit -m "comment" # commit changes
dotfiles push origin master # push to master node
dotfiles pull origin master # pull from master node
dotfiles reset # reset specific files from master node
dotfiles checkout #
dotfiles fetch #
dotfiles stash # to discard everything on status. When we want no link
```
