# shellcheck shell=bash
# =============
# FZF INIT - tld 9.25.26
# =============

[[ -r /usr/share/doc/fzf/examples/key-bindings.bash ]] &&
    source /usr/share/doc/fzf/examples/key-bindings.bash

[[ -r /usr/share/doc/fzf/examples/completion.bash ]] &&
    source /usr/share/doc/fzf/examples/completion.bash

# SHORTCUT COSMETICS
# -------------

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
	--preview 'bat --color=always --style=numbers --line-range=:500 {} 2>/dev/null'
	--preview-window='right:55%:border-left'
	--bind='ctrl-/:toggle-preview'
"

export FZF_ALT_C_OPTS="
	--prompt='Directories ❯ '
"
