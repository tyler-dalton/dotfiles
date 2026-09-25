# =============
# GIT ALIASES - tld 9.25.26
# =============

# cd directly to the root of the git repository
## Use: groot
# -------------
groot() {
    cd "$(git rev-parse --show-toplevel)" || return
}