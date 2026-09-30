# shellcheck shell=bash
# =============
# FZF INIT - tld 9.25.26
# =============

if command -v fzf >/dev/null 2>&1; then
    if [[ -r /usr/share/doc/fzf/examples/key-bindings.bash ]]; then
        # shellcheck disable=SC1091
        source /usr/share/doc/fzf/examples/key-bindings.bash
    fi

    if [[ -r /usr/share/doc/fzf/examples/completion.bash ]]; then
        # shellcheck disable=SC1091
        source /usr/share/doc/fzf/examples/completion.bash
    fi
fi

# SHORTCUT COSMETICS
# -------------

export FZF_CTRL_T_COMMAND='fd --type f --hidden --follow --exclude .git --exclude node_modules --exclude .cache'
export FZF_ALT_C_COMMAND='fd --type d --hidden --follow --exclude .git --exclude node_modules --exclude .cache'

# SHORTCUT COSMETICS
# -------------

# shellcheck disable=SC2031
export FZF_DEFAULT_OPTS="
    --height=45%
    --layout=reverse
    --border=rounded
    --info=inline-right
    --prompt='❯ '
    --pointer='▶'
    --marker='✓'
    --cycle
    --scrollbar='|'
    --separator='─'
    --color='pointer:blue'
    --wrap
"

export FZF_CTRL_R_OPTS="
    --prompt='History ❯ '
"

export FZF_CTRL_T_OPTS="
    --prompt='Files ❯ '
    --preview '
        if [[ -d {} ]]; then
            eza --tree --level=2 --color=always {}
        else
            bat --color=always --style=numbers --line-range=:500 {}
        fi 2>/dev/null
    '
	--preview-window='right:55%:border-left'
	--bind='ctrl-/:toggle-preview'
"

export FZF_ALT_C_OPTS="
	--prompt='Directories ❯ '
    --preview='eza --tree --level=2 --color=always {} 2>/dev/null'
    --preview-window='right:55%:border-left'
    --bind='ctrl-/:toggle-preview' "
