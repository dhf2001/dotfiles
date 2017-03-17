## GIT
source /usr/local/etc/bash_completion.d/git-prompt.sh
source /usr/local/etc/bash_completion.d/git-completion.bash

# export PS1='[\u@\h \W] '
export PS1='[\u@\h \W$(__git_ps1 " (%s)")]\$ '

## Directory Aliases
alias prj="cd ~/Projects"
alias dl='cd ~/Projects/dla_builder'

## Command Aliases
alias ls='ls -G'
