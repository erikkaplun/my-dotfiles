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

export PATH=~/bin:/opt/local/bin:/opt/local/sbin:/usr/local/bin:/usr/local/sbin:$PATH

export EDITOR="emacsclient -nw"
alias ec="emacsclient -nw"
alias ecw=emacsclient

complete -W "$(echo `cat ~/.ssh/known_hosts | cut -f 1 -d ' ' | sed -e s/,.*//g | uniq | grep -v "\["`;)" ssh


# python
alias skypip="pip install -i http://psi:8123/pypi/ --extra-index-url=http://pypi.python.org/simple"


## pythonz
[[ -s $HOME/.pythonz/etc/bashrc ]] && source $HOME/.pythonz/etc/bashrc
#export PATH=$HOME/.pythonz/pythons/CPython-2.7.3/bin:$PATH


## virtualenvwrapper
export VIRTUALENVWRAPPER_PYTHON=`which python`
export VIRTUALENVWRAPPER_VIRTUALENV=`which virtualenv`
source /usr/local/share/python/virtualenvwrapper.sh
export VIRTUALENV_USE_DISTRIBUTE=1


#####################
# git
#####################
alias g=git
alias s='g status'
alias gs='g status'
alias a='g add'
alias ga='g add'
alias gap='ga -p'
alias gf='g fetch'
alias gr='g rebase origin/master master'
alias gp='g push'
alias gb='g branch'

# diffing
alias d='g diff'
alias gd='g diff'
alias gds='g diff --staged'

# committing
alias gcm='g commit'
alias gcmam='g commit --amend -C HEAD'

# logging
alias gl='g log --pretty=format:"%Cblue%h%Creset%x09%an%x09 %ar%x09%s" --graph'
alias gin='gl ..origin'  # [w]hat's new
alias gout='gl origin..'  # what's [u]npushed

# checkout
alias gc='g checkout'
alias gcb='gc -b'

# stashing
alias gsta='g stash'
alias gstp='g stash pop'

# git svn
alias gdc='g svn dcommit'
alias gsr='g svn rebase'

# END GIT


alias listf="find . -not -name \"__init__.py\" | grep -v -e \"\\.svn\\|\\.git\" | cut -d / -f 2-"
alias listd="find . -type d | grep -v -e \"\\.svn\\|\\.git\" | cut -d / -f 2-"
alias listpy="listf | grep -e \"\\.py$\""

export AUTOJUMP_KEEP_SYMLINKS=1
[[ -s ~/.autojump/etc/profile.d/autojump.bash ]] && source ~/.autojump/etc/profile.d/autojump.bash

alias nano=ec

alias wdts='cd ~/work/dts; workon dts'

alias ns='nosetests -v -s'
alias nsfail='nosetests -v -s --failed'
alias nsk='nosetests -v -s ; killmatching nosetests'
alias nsfailk='nosetests -v -s --failed ; killmatching nosetests'
