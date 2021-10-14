# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS
shopt -s checkwinsize

PS1='\[\033[36m\][\[\033[34m\]\d \[\033[31m\]\t\[\033[36m\]] \[\033[32m\]\u \[\033[36m\]\w\n\[\033[39m\]\$ '
