bind '"\e[A": history-search-backward'
bind '"\e[B": history-search-forward'
shopt -s autocd
shopt -s histappend
alias bashvim="vim ~/.bash_profile"
alias bashopen="open ~/.bash_profile"
alias bashdot=". ~/.bash_profile"
alias vivdev="open /Applications/Vivaldi.app --args --debug-packed-apps --silent-debugger-extension-api"