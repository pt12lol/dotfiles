if [ -f /etc/bashrc ]; then
  . /etc/bashrc
fi

PS1='[\u@\h] [\D{%Y-%m-%d} \t] \w\n \$ '
