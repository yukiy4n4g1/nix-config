#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

shopt -s autocd
shopt -s checkwinsize

stty stop undef

set bell-style none

alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
alias pypy='pypy3'
alias python='python3'
alias grep='grep --color=auto'
alias vbm='vboxmanage'
alias gpp='g++'
alias sl='ls'
alias chmod='chmod --preserve-root'
alias chown='chown --preserve-root'

alias ls='ls --color=auto'
alias ll='ls -alF'
alias la='ls -A'

if command -v fzf-share >/dev/null; then
  source "$(fzf-share)/key-bindings.bash"
  source "$(fzf-share)/completion.bash"
fi

HISTCONTROL=ignoreboth

emoji=("🐧" "👽" "🎃" "💤" "🌋" "🔚" "🤔")
e_num=$(($RANDOM % ${#emoji[*]}))

PS1='┬─\[\033[00;35m\]\u\[\033[00m\] \[\033[00;34m\]\t \[\033[00;36m\]\w\[\033[00m\] ${emoji[$e_num]}\n╰─>>> '
