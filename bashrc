red=$(tput setaf 1)
green=$(tput setaf 2)
blue=$(tput setaf 4)
reset=$(tput sgr0)

# export PS1="\[\e]0;\]\u@\h: \w\a\[\$green\]\u@\h\[\$reset\]:\[\$blue\]\w\[\$reset\]\$ "
export PS1="\[\$green\]\w\[\$reset\]$ "

export LANG=en_US.utf-8
export LC_ALL=$LANG

export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad

export MANPATH=/opt/local/share/man:/usr/local/share/man:$MANPATH

export PATH=/opt/local/bin:/opt/local/sbin:/usr/local/bin:/usr/local/sbin:/Users/erik/bin:$PATH

export EDITOR="emacsclient"
alias ec="emacsclient -nw"
alias ecw=emacsclient

complete -W "$(echo `cat ~/.ssh/known_hosts | cut -f 1 -d ' ' | sed -e s/,.*//g | uniq | grep -v "\["`;)" ssh

# source ~/django_bash_completion
# source ~/git-completion.bash
# source ~/pip-completion.bash

source /usr/local/share/python/virtualenvwrapper.sh

export VIRTUALENV_USE_DISTRIBUTE=1

alias g=git
alias s='g status'
alias a='g add'
alias d='g diff'
alias ds='g diff --staged'

alias listf="find . -not -name \"__init__.py\" | grep -v -e \"\\.svn\\|\\.git\" | cut -d / -f 2-"
alias listd="find . -type d | grep -v -e \"\\.svn\\|\\.git\" | cut -d / -f 2-"
alias listpy="listf | grep -e \"\\.py$\""

alias onc="cd ~/work/opennode-console-exp; ls -l"
alias ons="cd ~/work/opennode-management; ls -l"
