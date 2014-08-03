if [ -f /etc/bashrc ]; then                                                     
  . /etc/bashrc                                                                 
fi

# login and computer name                                                       
PS1='[\e[\[1;37m\]\]\u\e[\[m\]\]@\e[\[1;32m\]\]\h\e[\[m\]\]] '                  
# date, time                                                                    
PS1=$PS1'[\e[\[1;34m\]\]\D{%Y-%m-%d} \e[\[1;35m\]\]\t\e[\[m\]\]] '              
# working directory and result of last command                                  
PS1=$PS1'\e[\[1;33m\]\]\w\e[\[m\]\] \e[\[1;31m\]\]${?#0}\e[\[m\]\]\n '          
# command prompt                                                                
PS1=$PS1'\e[\[1;36m\]\]\$\e[\[m\]\] '

alias ls='ls -la --color'                                                       
alias sc-tree='find | grep -v "/target\|idea\|\.git"'                           
alias vim-nn='vim -c "set nonu"'
