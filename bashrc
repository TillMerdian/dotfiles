#
# ~/.bashrc
#
set -o vi
# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '
alias vim=nvim
alias ll="ls -al"

#Display ISO version and distribution information in short
alias version="sed -n 1p /etc/os-release && sed -n 11p /etc/os-release && sed -n 12p /etc/os-release"

#Pacman Shortcuts
alias sync="sudo pacman -Syyy"
alias install="sudo pacman -S"
alias update="sudo pacman -Syyu"
alias search="sudo pacman -Ss"
alias search-local="sudo pacman -Qs"
alias pkg-info="sudo pacman -Qi"
alias local-install="sudo pacman -U"
alias clr-cache="sudo pacman -Scc"
alias unlock="sudo rm /var/lib/pacman/db.lck"
alias remove="sudo pacman -R"
alias autoremove="sudo pacman -Rns"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Created by `pipx` on 2023-07-12 22:32:29
export PATH="$PATH:/home/tillm/.local/bin"

export SSLKEYLOGFILE=~/.ssl-key.log

eval "$(starship init bash)"
