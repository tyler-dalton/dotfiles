# =============
# HELM FUNCTIONS - tld 9.24.26
# =============

function hvalidate() {
    local chart="${1:-.}"

    echo "==> Updating dependencies"
    helm dependency build "$chart" || return 1

    echo
    echo "==> Lint"
    helm lint "$chart" || return 1

    echo
    echo "==> Template render"
    helm template test "$chart" >/dev/null || return 1

    echo
    echo "Helm validation passed! Attaboy dalt."
}