if [ -f /etc/bashrc ]; then
  . /etc/bashrc
fi

# login and computer name
PS1='[\e[1;37m\]\u\e[m\]@\e[1;32m\]\h\e[m\]] '
# date, time and working directory
PS1=$PS1'[\e[1;34m\]\D{%Y-%m-%d} \e[1;35m\]\t\e[m\]] \e[1;33m\]\w\e[m\] '
# result of last command and command prompt in new line
PS1=$PS1'\e[1;31m\]${?#0}\e[m\]\n \e[1;36m\]\$\e[m\] '

alias ls='ls -la --color'
alias sc-tree='find | grep -v "/target\|idea\|\.git"'
alias vim-nn='vim -c "set nonu"'
