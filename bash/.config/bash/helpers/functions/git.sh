# shellcheck shell=bash
# =============
# GIT ALIASES - tld 9.25.26
# =============

# cd directly to the root of the git repository
## Use: groot
# -------------
groot() {
    cd "$(git rev-parse --show-toplevel)" || return
}

# Commit & push current branch
## Use: gcp "new dotfiles feature"
# -------------
function gcp() {
    git add .
    git commit -s -m "$1" &&
    git push origin "$(git branch --show-current)"
}
