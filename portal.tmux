PLUGIN_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
tmux bind-key a popup -E "${PLUGIN_DIR}/scripts/ssh-select.sh"
