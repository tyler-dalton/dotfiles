# =============
# HELM INIT - tld 9.30.26
# =============

if command -v helm >/dev/null 2>&1; then
    source <(helm completion bash)

    complete -o default -F __start_helm h
fi
