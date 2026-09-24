# =============
# GIT - tld 9.24.26
# =============

alias g='git'

# REPOSITORY
# -------------
alias gini='git init'
alias gcl='git clone'

# STATUS / INSPECTION
# ---------------
alias gst='git status'
alias gdi='git diff'
alias gds='git diff --staged'
alias gl='git log --oneline --decorate --graph'
alias gla='git log --oneline --decorate --graph --all'

# STAGE
# ---------------
alias ga='git add'
alias gaa='git add .'

# COMMIT
# ---------------
alias gc='git commit -s'
alias gcm='git commit -s -m'

# BRANCHES
# ---------------
alias gb='git branch'
alias gba='git branch -a'
alias gbd='git branch -d'
alias gbD='git branch -D'

alias gsw='git switch'
alias gcb='git checkout -b'

# REMOTE
# ---------------
alias gr='git remote -v'
alias gfo='git fetch origin'
alias gfom='git fetch origin main'

# PULL / PUSH
# ---------------
alias gpl='git pull'
alias gplo='git pull origin'
alias gpo='git push origin'
alias gpu='git push'

## push current branch
alias gpc='git push origin "$(git branch --show-current)"'

## push current branch & set upstream
alias gpcu='git push -u origin "$(git branch --show-current)"'

# UNDO
# ---------------
alias gundo='git reset --soft HEAD~1'
alias gunstage='git restore --staged'
alias greset='git restore'

# STASH
# ---------------
alias gstow='git stash'
alias gstowl='git stash list'
alias gpop='git stash pop'
alias gstowu='git stash -u'