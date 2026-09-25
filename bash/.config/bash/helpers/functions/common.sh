# =============
# COMMON FUNCTIONS - tld 9.24.26
# =============

# Make a directory, enter it at the same time
## Use: mkcd git-repo
# -------------

mkcd() {
    if [ -z "$1" ]; then
        echo "Usage: mkcd <directory>"
        return 1
    fi

    mkdir -p "$1" && cd "$1"
}

# Universal extractor
## Extracts all file compression types
## Use: extract file.zip, extract file.tar.gz
### Dependencies: unzip, p7zip or 7zip, unrar, tar, bzip2, gzip
### sudo <package manager> install unzip p7zip unrar tar bzip2 gzip
# -------------

extract() {
    if [ -z "$1" ]; then
        echo "Usage: extract <archive-file>"
        return 1
    fi

    if [ ! -f "$1" ]; then
        echo "File not found: $1"
        return 1
    fi

    case "$1" in
        *.tar.bz2)  tar xjf "$1" ;;
        *.tar.gz)   tar xzf "$1" ;;
        *.tar.xz)   tar xJf "$1" ;;
        *.tar.zst)  tar --zstd -xf "$1" ;;
        *.tar)      tar xf "$1" ;;
        *.tbz2)     tar xjf "$1" ;;
        *.tgz)      tar xzf "$1" ;;
        *.txz)      tar xJf "$1" ;;
        *.bz2)      bunzip2 "$1" ;;
        *.gz)       gunzip "$1" ;;
        *.zip)      unzip "$1" ;;
        *.7z)       7z x "$1" ;;
        *.rar)      unrar x "$1" ;;
        *)          echo "Unsupported archive type: $1"; return 1 ;;
    esac
}
