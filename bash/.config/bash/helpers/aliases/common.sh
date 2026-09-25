# =============
# SHELL / NAVIGATION - tld 9.25.26
# =============

alias ..='cd ..'
alias ..2='cd ../..'
alias ..3='cd ../../..'
alias ..4='cd ../../../..'
alias ..5='cd ../../../../..'

alias home='cd ~'
alias c='clear'
alias hist='history'

alias ll='eza -alF --color=auto --group-directories-first'
alias ls='ls -alF --color=auto --group-directories-first'
alias la='eza -AF --color=auto --group-directories-first'
alias l='eza -CF --color=auto --group-directories-first'
alias lt='eza --tree --level=2 --group-directories-first --icons'
alias lgit='eza -alF --git --group-directories-first --icons'

alias reload='source ~/.bashrc'

alias dl='cd ~/Downloads'
alias dk='cd ~/Documents'

alias mkdir='mkdir -pv'
alias cp='cp -iv'
alias mv='mv -iv'
alias rm='rm -v'

# APT UPDATES & INSTALLS
# -------------

alias a='apt'
alias sa='sudo apt'
alias ai='sudo apt install'
alias ar='sudo apt remove'
alias ap='sudo apt purge'

alias as='apt search'
alias ash='apt show'

alias au='sudo apt update'
alias aug='sudo apt upgrade'
alias aup='sudo apt update && sudo apt upgrade'

alias aar='sudo apt autoremove'
alias ac='sudo apt clean'

# EDITING & VIEWING HELPERS
# -------------

alias bashrc='code ~/dotfiles/bash/.bashrc'
alias helpers='code ~/dotfiles/bash/.config/bash/helpers'
alias dot='code ~/dotfiles'

# POWER CONTROLS
# -------------

alias boot='reboot'
alias off='poweroff'
alias sus='systemctl suspend'

# NETWORKING & WIFI
# -------------

alias ping4='ping -c 4'
alias pingg='ping -c 4 8.8.8.8'
alias pingdns='ping -c 4 google.com'

alias wifilist='nmcli device wifi list'
alias wifistat='nmcli radio wifi'
alias wifion='nmcli radio wifi on'
alias wifioff='nmcli radio wifi off'
alias wificonn='nmcli connection show'
alias renm='sudo systemctl restart NetworkManager'

# SERVICES & LOGS
# -------------

alias jc='journalctl'
alias jcb='journalctl -b'
alias jclb='journalctl --list-boots'
alias jcerr='journalctl -p err'
alias jcerrb='journalctl -p err -b'

alias sc='systemctl'
alias scre='sudo systemctl restart'
alias scstat='systemctl status'
alias scen='sudo systemctl enable'
alias scstart='sudo systemctl start'
alias scstop='sudo systemctl stop'
alias scu='systemctl --user'
alias scnow='sudo systemctl enable --now'

# MISC
# -------------

alias wttr='curl wttr.in'