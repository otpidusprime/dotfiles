HOST_NAME=sudipto

print_before_the_prompt () {
    dir=$PWD
    home=$HOME
    dir=${dir/"$HOME"/"~"}
    printf "\n\e[48;5;237m%s:\e[0m \e[38;5;203m%s\e[0m \e[38;5;214m%s\e[0m\n" "$HOST_NAME" "$dir" "$(vcprompt)"
}

PROMPT_COMMAND=print_before_the_prompt
PROMPT_COMMAND="history -a; history -c; history -r; $PROMPT_COMMAND"
PS1="> "

bind '"\e[A": history-search-backward'
bind '"\e[B": history-search-forward'
shopt -s autocd
shopt -s histappend

export PATH=$PATH:$HOME/bin

# aliases
alias bashvim="vim ~/.bash_profile"
alias bashopen="open ~/.bash_profile"
alias bashdot=". ~/.bash_profile"
alias cd.="cd .."
alias cd-="cd -"
alias gi="git init"
alias gl="git log"
alias gs="git status"
alias ga="git add ."
alias gaa="git add -A"
alias gpus="git push"
alias gpul="git pull"
alias vivdev="open /Applications/Vivaldi.app --args --debug-packed-apps --silent-debugger-extension-api"
# git commit alias
function gc() {
  git commit -m "$*"
}
# alias for git add and commit
function gac() {
  git add . && git commit -m "$*"
}
# git tag aliases
function gt() {
  git tag -a "$1" -m "$2"
}
function gtlw() {
  git tag "$*"
}
# alias to clone git repo
function gitc() {
  git clone "$*"
}
# alias to clone gists locally and cd into it
function gisc() {
  git clone git@gist.github.com:"$*".git && cd "$*"
}
# alias to make directory and cd into it
function mkcd()
{
  mkdir "$1" && cd "$1"
}

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion