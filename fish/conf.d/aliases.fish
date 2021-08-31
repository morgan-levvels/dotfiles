# nvim
alias vi='vim'
alias vim='nvim'

# exa
alias l='exa'
alias la='exa -a'
alias ll='exa -l'
alias lll='exa -lah'
alias ls='exa'

# git
alias gd='git diff'
alias gst='git status'
alias gco='git checkout'
alias ggpull='git pull origin (git_branch_name)'
alias ggpush='git push origin (git_branch_name)'
alias glg='git log --stat'
alias glgp='git log --stat -p'
alias glgg='git log --graph'
alias glgga='git log --graph --decorate --all'
alias glgm='git log --graph --max-count 10'
alias gl="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
alias glo='git log --oneline --decorate'
alias glola="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --all"
alias glog='git log --oneline --decorate --graph'
alias gloga='git log --oneline --decorate --graph --all'
alias gbD='git branch -D'
