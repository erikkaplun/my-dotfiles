red=$(tput setaf 1)
green=$(tput setaf 2)
blue=$(tput setaf 4)
reset=$(tput sgr0)

#export PS1="\[\e]0;\]\u@\h: \w\a\[\$green\]\u@\h\[\$reset\]:\[\$blue\]\w\[\$reset\]\$ "
export PS1="\[\$green\]\w\[\$reset\]\$ "

export LANG=en_US.utf-8
export LC_ALL=$LANG

export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad

export PATH=/opt/local/bin:/opt/local/sbin:$PATH
export MANPATH=/opt/local/share/man:$MANPATH

export PATH=/opt/local/Library/Frameworks/Python.framework/Versions/2.6/bin:$PATH
export PATH=/Applications/MacPorts/Emacs.app/Contents/MacOS/bin:$PATH
#export PATH=/Applications/MacPorts/Emacs.app/Contents/MacOS:$PATH
export PATH=/Applications/Racket/bin:$PATH
export PATH=/Users/erik/bin:$PATH

export EDITOR="emacsclient"
alias ec="emacsclient -nw"
alias ecw=emacsclient

complete -W "$(echo `cat ~/.ssh/known_hosts | cut -f 1 -d ' ' | sed -e s/,.*//g | uniq | grep -v "\["`;)" ssh

alias act=". venv/bin/activate"
alias lla="cd ~/work/lifelinealbum; act; alias runserver=\"django-admin.py runserver 0.0.0.0:8083\""
alias ku="workon kultinf"
alias wec="cd ~/work/webevident/contacts; act"

source ~/django_bash_completion
source ~/git-completion.bash
source /usr/local/share/python/virtualenvwrapper.sh
source ~/pip-completion.bash

export VIRTUALENV_USE_DISTRIBUTE=1

alias g=git
