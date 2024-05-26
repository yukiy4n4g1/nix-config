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
if type eza &> /dev/null; then
  alias ls='eza --group-directories-first'
  alias la='eza --group-directories-first -a'
  alias ll='eza -hal --git --time-style=long-iso --group-directories-first'
else
  alias ls='ls --color=auto'
  alias ll='ls -alF'
  alias la='ls -A' 
fi

emoji=("🐧" "👽" "🎃" "💤" "🌋" "🔚" "🤔")
e_num=$(($RANDOM % ${#emoji[*]}))

PS1='┬─\[\033[00;35m\]\u\[\033[00m\] \[\033[00;34m\]\t \[\033[00;36m\]\w\[\033[00m\] ${emoji[$e_num]}\n╰─>>> '
