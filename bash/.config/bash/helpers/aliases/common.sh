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
alias pubip='curl -s https://ifconfig.me'

alias ipa='ip addr'
alias ipr='iproute'
alias ports='ss -tulpn'

alias wifi-list='nmcli device wifi list'
alias wifi-stat='nmcli radio wifi'
alias wifi-on='nmcli radio wifi on'
alias wifi-off='nmcli radio wifi off'
alias wifi-conn='nmcli connection show'
alias renm='sudo systemctl restart NetworkManager'

# SERVICES & LOGS
# -------------

alias jc='journalctl'
alias jc-b='journalctl -b'
alias jc-lb='journalctl --list-boots'
alias jc-err='journalctl -p err'
alias jc-errb='journalctl -p err -b'

alias sc='systemctl'
alias sc-re='sudo systemctl restart'
alias sc-stat='systemctl status'
alias sc-en='sudo systemctl enable'
alias sc-start='sudo systemctl start'
alias sc-stop='sudo systemctl stop'
alias sc-u='systemctl --user'
alias sc-now='sudo systemctl enable --now'

# MISC
# -------------

alias wttr='curl wttr.in'
alias code-ext='code --list-extensions'
