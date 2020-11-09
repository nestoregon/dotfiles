# Nes' Dotfiles

This repository hosts my dotfiles to ease the configuration of a new device.

- Steps to create this repository can be found [bare github repository](https://harfangk.github.io/2016/09/18/manage-dotfiles-with-a-git-bare-repository.html)
- Additional information for creating [dotfiles information](https://www.freecodecamp.org/news/dive-into-dotfiles-part-2-6321b4a73608/)
- Example of how a dotfiles should look like [here](https://github.com/timdawborn/dotfiles)

## Things to do when you set your machine

- Update your device
```bash
sudo apt-get update && sudo apt-get upgrade 
```
- Install pip3
```bash
sudo apt-get install python3-pip
```
- Install vim
```bash
sudo apt-get install vim
```
- Install git
```bash
sudo apt-get install git 
```
- Install zsh
```bash
sudo apt-get install zsh 
```
- Set zsh as default
```bash
chsh -s $(which zsh) 
```  
For some changes to take place you may need to restart your device (such as zsh as the default shell).  
- Install Brave browser. As of 2020 you can follow the steps in the following [link](https://brave.com/linux/). As far as configuration, join the chain from "sync" in the settings of brave. This is easy to do, you need to create a chain ("Branch") that provides you with 24 unique words that need to be typed in our laptop. Also change the theme to dark because brave does not have that.
- Installing oh-my-zsh  
Page for information on how to install [here](https://github.com/ohmyzsh/ohmyzsh). Installation:
```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```
- Autosuggestions
```bash
git clone https://github.com/zsh-users/zsh-autosuggestions.git $ZSH_CUSTOM/plugins/zsh-autosuggestions

```
- Syntax highlight
```bash
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH_CUSTOM/plugins/zsh-syntax-highlighting
```

## Migrate to device
Run the following script on a new terminal

```bash
echo 'alias dotfiles="/usr/bin/git --git-dir=$HOME/.dotfiles.git/ --work-tree=$HOME"' >> $HOME/.zshrc
source ~/.zshrc
echo ".dotfiles.git" >> .gitignore

git clone --bare git@github.com:nestoregon/dotfiles.git $HOME/.dotfiles.git
dotfiles config --local status.showUntrackedFiles no
dotfiles checkout # to exit
```

## Import files

This can be easily done using ```reset```

```bash
dotfiles reset <file_name>
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

## Snaps

Snaps are to be avoided given that they take up more space and are slower than apt-installed apps. The theme integration isn't good either, especially w search engines such as brave-browser.
On the other hand, snaps are easy to install and remove, perfect to try a new app.
