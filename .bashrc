export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced
alias ll="ls -lGphF"
alias grep="grep --color=always"
alias gitst="git status"

export PS1='\[\033[01;32m\]\u\[\033[01;34m\]@\[\033[00;31m\]Axcient \[\033[00;34m\]{ \[\033[01;34m\]\w \[\033[00;34m\]}\[\033[01;32m\] \[\033[00m\]$ '
#export PS1='\[\033[01;32m\]\h\[\033[01;34m\] \w\[\033[31m\]$(__git_ps1 "(%s)") \[\033[01;34m\]$\[\033[00m\] '
export PS2='\e[0;31m\]~~>'
