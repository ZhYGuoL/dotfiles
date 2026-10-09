# ghostty-config

My [Ghostty](https://ghostty.org) config. Rose Pine Moon, JetBrains Mono, macOS.

## Install

1. Install the font (Ghostty falls back to its default font without it):

   ```sh
   brew install --cask font-jetbrains-mono-nerd-font
   ```

2. Drop the config in place (back up your own first if you have one):

   ```sh
   mkdir -p ~/.config/ghostty
   [ -f ~/.config/ghostty/config ] && cp ~/.config/ghostty/config ~/.config/ghostty/config.bak
   curl -fsSL https://raw.githubusercontent.com/ZhYGuoL/ghostty-config/main/config -o ~/.config/ghostty/config
   ```

3. Reload with `Cmd+Shift+,`. The title bar and Dock icon settings only apply after a full quit (`Cmd+Q`) and reopen.

## Things you might want to change

- `macos-option-as-alt = true` makes Option act as Alt for tmux/Neovim shortcuts. If you type accented characters with Option (é, ñ), set it to `right` or delete the line.
- `copy-on-select = clipboard` copies anything you highlight straight to the clipboard.
- `macos-icon = custom-style` recolors the Dock icon purple. Use `macos-icon = official` for the normal one.
- `font-size = 14` if the text feels too big or small.

Every setting has a comment above it explaining what it does.
