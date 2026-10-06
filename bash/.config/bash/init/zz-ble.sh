# shellcheck shell=bash
# =============
# BLE.SH INIT - tld 10.05.26
# =============

if [[ -r "$HOME/.local/share/blesh/ble.sh" ]]; then
    source "$HOME/.local/share/blesh/ble.sh"

    # Show the inline history-based suggestion - accept w/ right arrow key.
    bleopt complete_auto_complete=1
fi
