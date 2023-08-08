# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# P10K
# if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
#   source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
# fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/admin/.oh-my-zsh"
LC_CTYPE=en_US.UTF-8
LC_ALL=en_US.UTF-8

# Themes
ZSH_THEME="robbyrussell"
# ZSH_THEME="cute-theme"
# ZSH_THEME="powerlevel10k/powerlevel10k"
#POWERLEVEL9K_MODE="nerdfont-complete"
#POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status virtualenv)

plugins=(
    git
    zsh-autosuggestions
    zsh-syntax-highlighting
    ls 
    vi-mode
    zsh-z
    sudo
    web-search
)

source $ZSH/oh-my-zsh.sh


# Vim
alias vi="nvim"

# Configurations
alias zshconfig="vi ~/.zshrc"
alias update="source ~/.zshrc"
alias ohmyzsh="vi ~/.oh-my-zsh"
alias vimconfig="vim ~/.vimrc"
alias nconfig="cd ~/.config/nvim; vi init.lua"

# Move files 
alias desk="mv ~/Desktop/* ." # move everything from Desktop to current folder
alias deskl="ls ~/Desktop" # list desktop
alias deskr="rm -rf ~/Desktop/*" # remove everything in Desktop
alias down="mv ~/Downloads/* ." # move everything from Download
alias downl="ls ~/Downloads/" # move everything from Download
alias downr="rm -rf ~/Downloads/*" # move everything from Download


# GitHub
alias gall="git add .;git commit -m 'commit'; git push"
alias git_clean="git branch | grep -v “master\|development” | xargs git branch -D"
alias glog="git log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --branches"
alias ref="git reflog --pretty='format:%C(red)%h%Creset %gD: %gs %C(yellow)%d%Creset %Cgreen(%ar) %C(bold blue)<%an>%Creset'"
alias web='gh pr view --web'  # install gh first, view pr in web

# Ubuntu
alias upd="sudo apt update && sudo apt upgrade -y && sudo apt autoremove -y && sudo apt autoclean -y"
alias nau="nautilus .&" # 'open' in Mac
alias shu="shutdown now -"

alias co="pbcopy"
alias so="source venv/bin/activate" 
alias pa="pbpaste"
alias cur="cd ~/projects/learn/advent_code/2020" # Set current WIP
alias flow="stackoverflow"

# HelloFresh repsositories
alias fre="cd ~/hellofresh/" 
alias box="cd ~/in_production/d-a-bnlf-boxcount-automation; so;" 
alias fel="cd ~/hellofresh/d-a-bnfl-felix-splitter; so;" 
alias foor="cd ~/hellofresh/d-a-bnlf-order-upload-quality-checks; so;" 
alias prep="cd ~/hellofresh/d-a-bnlf-product-prep; so;" 
alias exc="cd ~/hellofresh/d-a-bnfl-belgium-excise-duty-tool" 
alias mark="cd ~/hellofresh/d-a-bnlf-customer-address-upload"
alias rl="cd ~/hellofresh/d-a-bnlf-route-logistics; so;"
alias veh="cd ~/hellofresh/d-a-bnlf-vehicles-tool; so;"
alias car="cd ~/hellofresh/d-a-bnlf-foreign-carriers-tool; so;"
alias short="cd ~/hellofresh/d-a-bnlf-short-term-forecast; so;"

# python aliases
alias sor="isort . --settings-path .github/linters"

# useful
alias topten="history | commands | sort -rn | head"
alias usage='du -sm * | sort -n -r'

## docker
alias dockerstop='docker-compose stop'
alias dockerrestart='docker-compose restart'
alias dockerup='docker-compose up -d'
alias dockerrm='docker-compose rm --all'

# Quick files
alias todo="vi ~/.zsh_alias_files/to_do_list.md"
alias note="vi ~/.zsh_alias_files/notes.md"
alias yo="vi ~/.zsh_alias_files/personal_todo.md"
alias quick_python="vi ~/.zsh_alias_files/quick_python_test.py"
alias run_quick_python="python3 ~/.zsh_alias_files/quick_python_test.py"
alias projects="vi ~/.zsh_alias_files/projects.md"
alias did='xattr -p user.drive.id'
alias new_env='deactivate; rm -rf venv; python3.9 -m venv venv; source venv/bin/activate;'
alias update_files='target_repo="d-a-bnlf-template"; target_file="generate_target_repository.sh"; git clone "git@github.com:hellofresh/${target_repo}.git" --quiet; cp "${target_repo}/${target_file}" .; rm -rf $target_repo; bash $target_file; rm $target_file'

# Functions
commands() {
  awk '{a[$2]++}END{for(i in a){print a[i] " " i}}'
}

# PATHS
export PATH="$PATH:/usr/share/code/bin"
export PATH="$PATH:/Users/admin/Applications/jetstream-amd64-darwin-2.15.0"

# Set it so ~/.pyenv provides Python before others of the same name:
export PYENV_ROOT=$(pyenv root)
export PATH="$PYENV_ROOT/shims:$PATH"
eval "$(saml2aws --completion-script-zsh)"
VIRTUALENVWRAPPER_PYTHON=/usr/bin/python3

# Fuzzy finder
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

alias dotfiles="/usr/bin/git --git-dir=$HOME/.dotfiles.git/ --work-tree=$HOME"
alias dotfiles="/usr/bin/git --git-dir=$HOME/.dotfiles.git/ --work-tree=$HOME"
