bind '"\e[A": history-search-backward'
bind '"\e[B": history-search-forward'
shopt -s autocd
shopt -s histappend

function gc() {
  git commit -m "$*"
}

function mkcd()
{
        mkdir $1 && cd $1
}

alias bashvim="vim ~/.bash_profile"
alias bashopen="open ~/.bash_profile"
alias bashdot=". ~/.bash_profile"
alias gi="git init"
alias gl="git log"
alias gs="git status"
alias ga="git add ."
alias gaa="git add -A"
alias gpus="git push"
alias gpul="git pull"
alias vivdev="open /Applications/Vivaldi.app --args --debug-packed-apps --silent-debugger-extension-api"