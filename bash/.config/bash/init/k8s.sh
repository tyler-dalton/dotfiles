# shellcheck shell=bash
# =============
# K8S INIT - tld 9.30.26
# =============

if command -v kubectl >/dev/null 2>&1; then
    source <(kubectl completion bash)

    complete -o default -F __start_kubectl k
fi
