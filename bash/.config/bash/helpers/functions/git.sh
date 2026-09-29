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
    if [[ -z "$1" ]]; then
        echo 'Usage: gcp "commit message"'
        return 1
    fi

    read -r p "WARNING: You are about to stage, commit, and push ALL changes. Continue? (y/n) " confirm

    case "$confirm" in
        y|Y)
            git add .
            git commit -s -m "$1" &&
                git push origin "$(git branch --show-current)"
            ;;
        *)
            echo "Aborted. No changes were staged, committed, or pushed."
            return 1
            ;;
    esac }
