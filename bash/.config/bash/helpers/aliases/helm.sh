# =============
# HELM - tld 9.24.26
# =============

alias h='helm'

# REPOSITORY MANAGEMENT
# -------------

alias hr='helm repo'
alias hra='helm repo add'
alias hru='helm repo update'
alias hrl='helm repo list'

# RELEASES
# -------------

alias hlist='helm list'
alias hlista='helm list -A'
alias hs='helm status'
alias hh='helm history'

# INSTALL / UPGRADE / UNINSTALL
# -------------

alias hi='helm install'
alias hu='helm upgrade'
alias hui='helm upgrade --install'
alias hun='helm uninstall'

# CHART DEVELOPMENT
# -------------

alias hdep='helm dependency'
alias hdepu='helm dependency update'
alias hdepb='helm dependency build'

alias hl='helm lint'
alias hl.='helm lint .'
alias ht='helm template'
alias hp='helm package'

# INSPECTION
# -------------

alias hsv='helm show values'
alias hsc='helm show chart'
alias hsa='helm show all'

alias hgv='helm get values'
alias hgm='helm get manifest'

# DEBUG / DRY-RUN / SEARCH / VERSION
# -------------

alias hdry='helm install --dry-run --debug'
alias hudry='helm upgrade --install --dry-run --debug'
alias hsr='helm search repo'
alias hv='helm version'
alias hsrv='helm search repo --version'

# OCI / CHARTS
# -------------

alias hpl='helm pull'
alias hpush='helm push'

# HELM UNITTEST
# -------------
alias hutest='helm unittest'

# PLUGINS
# -------------

alias hplug='helm plugin list'

# HELM COMPLETION
# -------------

source <(helm completion bash)
complete -o default -F __start_helm h