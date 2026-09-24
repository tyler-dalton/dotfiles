# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=10000
HISTFILESIZE=20000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# If set, the pattern "**" used in a pathname expansion context will
# match all files and zero or more directories and subdirectories.
#shopt -s globstar

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# uncomment for a colored prompt, if the terminal has the capability; turned
# off by default to not distract the user: the focus in a terminal window
# should be on the output of commands, not on the prompt
#force_color_prompt=yes

if [ -n "$force_color_prompt" ]; then
    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
	# We have color support; assume it's compliant with Ecma-48
	# (ISO/IEC-6429). (Lack of such support is extremely rare, and such
	# a case would tend to support setf rather than setaf.)
	color_prompt=yes
    else
	color_prompt=
    fi
fi

if [ "$color_prompt" = yes ]; then
    PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
else
    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
fi
unset color_prompt force_color_prompt

# If this is an xterm set the title to user@host:dir
case "$TERM" in
xterm*|rxvt*)
    PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
    ;;
*)
    ;;
esac

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# colored GCC warnings and errors
#export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

# =============
# HELPERS - tld 9.24.26
# =============

for helper_file in "$HOME"/.config/bash/helpers/aliases/*.sh; do
    [[ -r "$helper_file" ]] && source "$helper_file"
done

for helper_file in "$HOME"/.config/bash/helpers/functions/*.sh; do
    [[ -r "$helper_file" ]] && source "$helper_file"
done

unset helper_file

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi
eval "$(starship init bash)"

export PATH="$HOME/.local/bin:$PATH"


# =============
# FZF
# =============
source /usr/share/doc/fzf/examples/key-bindings.bash
source /usr/share/doc/fzf/examples/completion.bash

# =============
# FZF CUSTOM STYLING
# =============
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

# =============
# FZF CUSTOM KEYBINDS
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

# =============
# ZOXIDE
# =============

eval "$(zoxide init bash)"
