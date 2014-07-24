if [ -f /etc/bashrc ]; then
  . /etc/bashrc
fi

# login and computer name
PS1='[\e[0;32m\]\u\e[m\]@\e[1;34m\]\h\e[m\]] '
# date and time
PS1=$PS1'[\e[0;36m\]\D{%Y-%m-%d} \e[1;33m\]\t\e[m\]] \e[1;35m\]\w\e[m\] '
# result of last command
PS1=$PS1'\e[1;31m\]${?#0}\e[m\]\n '
# bash command prompt
PS1=$PS1'\e[0;33m\]\$\e[m\] '

alias ls='ls -la --color'
alias c='find | grep -v "/\.\|/target\|idea"'
