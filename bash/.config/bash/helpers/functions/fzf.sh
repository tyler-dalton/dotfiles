# =============
# FZF CUSTOM KEYBINDS - tld 9.25.26
# =============

# Alt+P - Select a process and insert its PID
fzf_process() {
	local pid
	pid=$(
		ps -eo pid,user,comm,args --sort=pid |
		sed 1d |
		fzf --prompt="Process ❯ " |
		awk '{print $1}'
	)
	if [[ -n "$pid" ]]; then
		READLINE_LINE="${READLINE_LINE:0:READLINE_POINT}${pid}${READLINE_LINE:READLINE_POINT}"
		READLINE_POINT=$((READLINE_POINT + ${#pid}))
	fi
}

# Alt+G - Select and switch Git branch
fzf_git_branch() {
	git rev-parse --is-inside-work-tree &>/dev/null || return

	local branch
	branch=$(
		git for-each-ref \
			--format='%(refname:short)' \
			refs/heads |
		fzf --prompt="Branch ❯ "
	)
	[[ -n "$branch" ]] && git switch "$branch"
}

# Alt+S - Select SSH host and connect
fzf_ssh() {
	[[ -f ~/.ssh/config ]] || return

	local host
	host=$(
		awk '
			tolower($1) == "host" {
				for (i = 2; i<= NF; i++) {
					if ($i !~ /[*?!]\)
						print $1
				}
			}
		' ~/.ssh/config |
		sort -u |
		fzf --prompt="SSH ❯ "
	)
	[[ -n "$host" ]] && ssh "$host"
}

bind -x '"\ep":fzf_process'
bind -x '"\eg":fzf_git_branch'
bind -x '"\es":fzf_ssh'

export FZF_CTRL_R_OPTS="
	--prompt='History ❯ '
"

export FZF_CTRL_T_OPTS="
	--prompt='Files ❯ '
	--preview 'bat --color=always --style=numbers --line-range=:500 {} 2>/dev/null'
	--preview-window='right:55%:border-left'
	--bind='ctrl-/:toggle-preview'
"

export FZF_CTRL_C_OPTS="
	--prompt='Directories ❯ '
"