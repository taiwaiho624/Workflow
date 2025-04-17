parse_git_branch() {
	git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

###GENERAL###
alias ll="ls -la"
export PS1="\[\033[38;5;172m\]\[\][\[\]\T\[\]]\[\]\[\033[38;5;153m\]\u\[\]@${PLT_VM_NICKNAME:-\h}:\[\]\[\033[38;5;214m\]\w\[\e[91m\]\$(parse_git_branch)\[\e[00m\]$ "

###TMUX###
alias p='tmux popup -w 80% -h 80%' 
alias pp='tmux popup -w 90% -h 90%  "tmux attach -t popup || tmux new -s popup"'
alias ta='tmux attach'
alias fixssh='eval $(tmux showenv -s SSH_AUTH_SOCK)'
alias ss='fixssh; ssh'
