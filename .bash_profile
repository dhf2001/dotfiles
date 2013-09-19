## Paths

PATH=/usr/local/bin:$PATH # prioritize /usr/local/bin for homebrew
PATH=$PATH:/usr/local/share/npm/bin # npm
PATH=$PATH:~/bin


## RVM

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*


## GIT

# TODO: rewrite PS1 using git-prompt.bash
export PS1="\W \[\033[31m\]\`git branch 2> /dev/null | grep -e ^* | sed -E  s/^\\\\\\\\\*\ \(.+\)$/\(\\\\\\\\\1\)\ /\`\[\033[37m\]\[\033[00m\]\u \[\e[1;93m\]🌵\[\e[m\]  "

source /usr/local/etc/bash_completion.d/git-completion.bash


## Directory Aliases

alias prj="cd ~/Projects"
alias ga="cd ~/Projects/GiddyApps"
alias dl='cd ~/Projects/dla_builder'


## Command Aliases

alias z="zeus"


## Bash Colors

case ${TERM} in
        xterm*|rxvt*|Eterm|aterm|kterm|gnome*|interix)
                PROMPT_COMMAND='echo -ne "\033]0;${USER}@${HOSTNAME%%.*}:${PWD/$HOME/~}\007"'
                use_color=true
                ;;
        screen)
                PROMPT_COMMAND='echo -ne “\033_${USER}@${HOSTNAME%%.*}:${PWD/$HOME/~}\033\\"'
                use_color=true
                ;;
esac

if ${use_color} ; then
        # set color prompt
        # if [[ ${EUID} == 0 ]] ; then
        #         PS1='\[\033[01;31m\]\h\[\033[01;34m\] \W \$\[\033[00m\] '
        # else
        #         PS1='\[\033[01;32m\]\u@\h\[\033[01;34m\] \w \$\[\033[00m\] '
        # fi

        # enable ls colors
        alias ls='ls -G'
        # enable grep color
        # alias grep='grep –colour=auto' # causing annoyance with RVM
else
        if [[ ${EUID} == 0 ]] ; then
                # show root@ when we don’t have colors
                PS1='\u@\h \W \$ '
        else
                PS1='\u@\h \w \$ '
        fi
fi

# Try to keep environment pollution down
unset use_color
