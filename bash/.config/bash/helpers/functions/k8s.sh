# =============
# K8S FUNCTIONS - tld 9.24.26
# =============

function kman() {
  local path="${1:-.}"
  local output="${2:-manifest.yaml}"

  kubectl kustomize "$path" \
    --enable-helm \
    --load-restrictor LoadRestrictionsNone \
    > "$output"

  echo "Rendered: $output"
}