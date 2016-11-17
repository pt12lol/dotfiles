if [ -f /etc/bashrc ]
then
    . /etc/bashrc
fi

function last_result {
    RES=$?
    if [ $RES -ne 0 ]
    then
        echo " $RES"
    fi
}

source /usr/share/git-core/contrib/completion/git-prompt.sh

export GIT_PS1_SHOWDIRTYSTATE=true
export GIT_PS1_SHOWUNTRACKEDFILES=true

alias gbs="declare -F __git_ps1 &> /dev/null && __git_ps1 ' (%s)'"

# docker
alias d-start='sudo service docker start'
alias d-stop='sudo service docker stop'
alias d-net='sudo sysctl -w net.ipv4.ip_forward=1'
alias d-rm='sudo rm -rf /var/lib/docker'

alias addkeys='eval $(ssh-agent -s) && ssh-add'

COL0='\[\e[m\]'
COL_USER='\[\e[1;38m\]'
COL_HOST='\[\e[1;32m\]'
COL_DATE='\[\e[1;34m\]'
COL_TIME='\[\e[1;35m\]'
COL_CDIR='\[\e[1;33m\]'
COL_RSLT='\[\e[1;31m\]'
COL_GTBC='\[\e[1;37m\]'
COL_PMPT='\[\e[1;36m\]'

# login and hostname
export PS1="[$COL_USER\u$COL0@$COL_HOST\h$COL0]"
# date and time
export PS1="$PS1 [$COL_DATE\D{%Y-%m-%d} $COL_TIME\t$COL0]"
# working directory
export PS1="$PS1 $COL_CDIR\w$COL0"
# result of the last command
export PS1="$PS1$COL_RSLT\$(last_result)$COL0"
# git status
export PS1="$PS1$COL_GTBC\$(gbs)$COL0\n "
# command prompt
export PS1="$PS1$COL_PMPT\$$COL0 "

export PATH=~/bin:$PATH

source ~/virtualenv/bin/activate

unset PROMPT_COMMAND
