PATH=/usr/local/bin:$PATH # Bring /usr/local/bin to the front for Homebrew
PATH=$PATH:~/bin # Add user bin

export PS1="\W \[\033[31m\]\`git branch 2> /dev/null | grep -e ^* | sed -E  s/^\\\\\\\\\*\ \(.+\)$/\(\\\\\\\\\1\)\ /\`\[\033[37m\]\[\033[00m\]\u \[\e[1;93m\]🌵\[\e[m\]  "

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

source /usr/local/Cellar/git/1.8.1/etc/bash_completion.d/git-completion.bash

alias prj="cd ~/Projects"
alias ga="cd ~/Projects/GiddyApps"

alias z="zeus"
