# Aliases
alias gap='git add -p'
alias gcl='git clone'
alias ga='git add'
alias gall='git add .'
alias g='git'
alias get='git'
alias gst='git status'
alias gs='git status'
alias gss='git status -s'
alias gl='git pull'
alias gup='git fetch && git rebase'
alias gp='git push'
alias gpo='git push origin'
alias gdv='git diff -w "$@" | vim -R -'
alias gc='git commit -v'
alias gca='git commit -v -a'
alias gma='git commit -a -m'
alias gci='git commit --interactive'
alias gb='git branch'
alias gba='git branch -a'
alias gcount='git shortlog -sn'
alias gcp='git cherry-pick'
alias gco='git checkout'
alias gexport='git archive --format zip --output'
alias gdel='git branch -D'
alias gmu='git fetch origin -v; git fetch upstream -v; git merge upstream/master'
alias gll='git log --graph --pretty=oneline --abbrev-commit'

case $(uname -s) in
  linux*)
    alias gd='git diff | vim -R -'
    ;;
  darwin*)
    alias gd='git diff | vim -R -'
    ;;
  darwin*)
    alias gd='git diff'
    ;;
esac
