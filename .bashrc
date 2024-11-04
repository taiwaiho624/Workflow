###GENERAL###
alias ll="ls -l"
export PS1='\[\033[0;32m\]$(whoami)@$(hostname):\[\033[0;36m\]$(pwd)\[\033[0;0m\] $ '

###TMUX###
alias p='tmux popup -w 80% -h 80%' 
alias pp='tmux popup -w 90% -h 90%  "tmux attach -t popup || tmux new -s popup"'
alias ta='tmux attach'
alias fixssh='eval $(tmux showenv -s SSH_AUTH_SOCK)'
alias ss='fixssh; ssh'
