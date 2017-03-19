set -o vi
set editing-mode vi

export WORKON_HOME=~/.virtualenvs

export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[36m\]\w\[\033[0;32m\]$(echo " (\$(git branch 2>/dev/null | grep '^*' | colrm 1 2))"  | sed 's/ ()//g' 2>/dev/null ) \[\033[m\]\$ "
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad
alias ls='ls -GFh'
alias idea='open -a "IntelliJ IDEA CE"'
