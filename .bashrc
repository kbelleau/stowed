# kbelleau - .bashrc - MacOS w/ homebrew
# configured on MacOS Sonoma

# if not running interactively, don't run any configurations
[[ $- != *i* ]] && return

# don't put duplicate lines in history
HISTCONTROL=ignoreboth

# append to history file instead of overwrite
shopt -s histappend

# setting for history length and size
HISTSIZE=1000
HISTFILESIZE=4000

# check the window size after each command and update if necessary LINES/COLUMNS
shopt -s checkwinsize

# fancy PS1
PS1=$'\[\e[1;37m\]\u\[\e[0m\]@\[\e[1;34m\]\h\[\e[0m\]:\w/ \n\u279E \$ '

# fancy PS1 for interactive sub shells
if (( "$SHLVL" > 1 )) && [[ "$TERM" != screen* ]]; then
  PS1="(shlvl=$SHLVL) $PS1"
fi

# fancy PS1 for screen session
if [[ "$TERM" == screen* ]]; then
  PS1="[$STY] $PS1"
fi

# export PS1 now
export PS1

# assign PAGER
export PAGER="less"

# no .lesshst file
export LESSHISTFILE=-

# have ls and grep use colors
if command -v dircolors >/dev/null 2>&1; then
  alias ls='ls --color=auto'
  alias dir='dir --color=auto'
  alias vidr='vdir --color=auto'
  alias grep='grep --color=auto'
  alias fgrep='grep -F --color=auto'
  alias egrep='grep -E --color=auto'
fi

# aliases
alias ll='ls -l'
alias la='ls -alv'
alias lax='ls -ld .??*'
alias lr='ls -lR'
alias lar='ls -laR'
alias lt='ls -ltr'
alias lat='ls -latr'
alias sudocat='sudo cat'
alias append='tee -a'
alias view='nano -v'

# if we have tree installed, create some tree aliases
if command -v tree >/dev/null 2>&1; then
  alias tree='tree -Ca'
  alias cedar='echo; tree -I .git $(pwd)'
  alias sap='echo; tree -p'
fi
