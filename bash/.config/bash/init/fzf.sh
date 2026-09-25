# =============
# FZF INIT - tld 9.24.26
# =============

[[ -r /usr/share/doc/fzf/examples/key-bindings.bash ]] &&
    source /usr/share/doc/fzf/examples/key-bindings.bash

[[ -r /usr/share/doc/fzf/examples/completion.bash ]] &&
    source /usr/share/doc/fzf/examples/completion.bash

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