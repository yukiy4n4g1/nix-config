#
# ~/.zshrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

stty stop undef

set bell-style none

bindkey -e

alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
alias pypy='pypy3'
alias python='python3'
alias grep='grep --color=auto'
alias doco='docker-compose'
alias vbm='vboxmanage'
alias v='vim'
alias copy='xsel --clipboard --input'
alias gpp='g++'
alias k9s='LANG="en_US.UTF-8" LC_ALL="en_US.UTF-8" k9s'
alias sl='ls'
alias ls='ls --color=auto'
alias ll='ls -alF'
alias la='ls -A' 

if [ -n "${commands[fzf-share]}" ]; then
  source "$(fzf-share)/key-bindings.zsh"
  source "$(fzf-share)/completion.zsh"
fi

export VOLTA_HOME="$HOME/.volta"
export PATH="$VOLTA_HOME/bin:$PATH"
export JAVA_HOME=/Library/Java/JavaVirtualMachines/liberica-jdk-17.jdk/Contents/Home
export PATH="$PATH:$HOME/development/flutter/bin"
export PATH="$PATH:$HOME/Library/Android/sdk/platform-tools"

eval "$(direnv hook zsh)"
