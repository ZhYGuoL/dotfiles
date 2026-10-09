#!/usr/bin/env bash
# Installs the Ghostty + tmux + Neovim + Starship setup on macOS.
# Safe to re-run: anything it replaces is backed up first.
set -euo pipefail

REPO="$(cd "$(dirname "$0")" && pwd)"
STAMP="$(date +%Y%m%d-%H%M%S)"
BACKUP="$HOME/.dotfiles-backup-$STAMP"

if ! command -v brew >/dev/null 2>&1; then
  echo "Homebrew is required. Install it from https://brew.sh, then re-run this script."
  exit 1
fi

echo "==> Installing apps and tools"
brew install --cask ghostty font-jetbrains-mono-nerd-font || true
brew install tmux neovim starship ripgrep fd node

backup() {
  if [ -e "$1" ] || [ -L "$1" ]; then
    mkdir -p "$BACKUP"
    mv "$1" "$BACKUP/"
    echo "    backed up $1"
  fi
}

echo "==> Copying configs (old ones go to $BACKUP)"
mkdir -p "$HOME/.config/ghostty"
backup "$HOME/.config/ghostty/config"
cp "$REPO/ghostty/config" "$HOME/.config/ghostty/config"

backup "$HOME/.tmux.conf"
cp "$REPO/tmux/tmux.conf" "$HOME/.tmux.conf"

backup "$HOME/.config/starship.toml"
cp "$REPO/starship/starship.toml" "$HOME/.config/starship.toml"

backup "$HOME/.config/nvim"
cp -R "$REPO/nvim" "$HOME/.config/nvim"

echo "==> Hooking Starship into zsh"
LINE='eval "$(/opt/homebrew/bin/starship init zsh)"'
touch "$HOME/.zshrc"
if ! grep -qF "starship init zsh" "$HOME/.zshrc"; then
  printf '\n# Starship prompt (keep at end of file)\n%s\n' "$LINE" >> "$HOME/.zshrc"
fi

echo
echo "Done. Next:"
echo "  1. Open Ghostty (quit and reopen it if it was already running)."
echo "  2. Run: tmux"
echo "  3. Run: nvim   (first launch downloads plugins, give it a minute)"
