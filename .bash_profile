[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" # Load the default .profile


## RVM
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

## Paths
PATH=$PATH:~/bin

## GIT
source /usr/local/etc/bash_completion.d/git-prompt.sh
source /usr/local/etc/bash_completion.d/git-completion.bash

# export PS1="\W \[\033[31m\]\`git branch 2> /dev/null | grep -e ^* | sed -E  s/^\\\\\\\\\*\ \(.+\)$/\(\\\\\\\\\1\)\ /\`\[\033[37m\]\[\033[00m\]\u \[\e[1;93m\]🌵\[\e[m\]  "
export PS1='[\u@\h \W$(__git_ps1 " (%s)")]\$ '

## Directory Aliases
alias prj="cd ~/Projects"
alias ga="cd ~/Projects/GiddyApps"
alias dl='cd ~/Projects/dla_builder'

## Command Aliases
alias ls='ls -G'
