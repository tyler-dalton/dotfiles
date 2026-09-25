# =============
# SHELL / NAVIGATION - tld 9.24.25
# =============

alias ..='cd ..'
alias ..2='cd ../..'
alias ..3='cd ../../..'
alias ..4='cd ../../../..'
alias ..5='cd ../../../../..'

alias home='cd ~'
alias c='clear'
alias hist='history'

alias ll='ls -alF --color=auto --group-directories-first'
alias la='ls -A --color=auto --group-directories-first'
alias l='ls -CF --color=auto --group-directories-first'

alias reload='source ~/.bashrc'

alias dl='cd ~/Downloads'
alias dk='cd ~/Documents'

# =============
# EDITING & VIEWING HELPERS
# =============

alias bashrc='code ~/dotfiles/bash/.bashrc'
alias helpers='code ~/dotfiles/bash/.config/bash/helpers'
alias dot='code ~/dotfiles'

# =============
# NETWORKING & WIFI
# =============

alias ping4='ping -c 4'
alias pingg='ping -c 4 8.8.8.8'
alias pingdns='ping -c 4 google.com'

alias wifilist='nmcli device wifi list'
alias wifistat='nmcli radio wifi'
alias wifion='nmcli radio wifi on'
alias wifioff='nmcli radio wifi off'
alias wificonn='nmcli connection show'
alias renm='sudo systemctl restart NetworkManager'

# =============
# MISC
# =============

alias wttr='curl wttr.in'