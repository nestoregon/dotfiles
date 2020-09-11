# Nes' Dotfiles

This repository hosts my dotfiles to ease the configuration of a new device.

- Steps to create this repository can be found [bare github repository](https://harfangk.github.io/2016/09/18/manage-dotfiles-with-a-git-bare-repository.html)
- Additional information for creating [dotfiles information](https://www.freecodecamp.org/news/dive-into-dotfiles-part-2-6321b4a73608/)
- Example of how a dotfiles should look like [here](https://github.com/timdawborn/dotfiles)

# Things to do when you set your machine

- Install Brave browser
- Install pip




## Pre setup / requisites

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
