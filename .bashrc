if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

COL0='\[\e[m\]'
COL_USER='\[\e[1;37m\]'
COL_HOST='\[\e[1;32m\]'
COL_DATE='\[\e[1;34m\]'
COL_TIME='\[\e[1;35m\]'
COL_CDIR='\[\e[1;33m\]'
COL_RSLT='\[\e[1;31m\]'
COL_PMPT='\[\e[1;36m\]'

# login and hostname
PS1="[${COL_USER}\u${COL0}@${COL_HOST}\h${COL0}] "
# date and time
PS1=$PS1"[${COL_DATE}\D{%Y-%m-%d} ${COL_TIME}\t${COL0}] "
# working directory and result of last command
PS1=$PS1"${COL_CDIR}\w${COL0} ${COL_RSLT}$"'{?#0}'"${COL0}\n "
# command prompt
PS1=$PS1"${COL_PMPT}\$${COL0} "

alias ls='ls -la --color'
alias sc-tree='find | grep -v "/target\|idea\|\.git"'
alias vim-nn='vim -c "set nonu"'
alias vim-80='vim -c "set colorcolumn=80"'
alias vim-120='vim -c "set colorcolumn=120"'
