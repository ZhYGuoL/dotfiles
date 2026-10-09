# dotfiles

My terminal setup on macOS: **Ghostty** + **tmux** + **Neovim (LazyVim)** + **Starship**, all themed Rose Pine Moon with JetBrains Mono.

## Install

Needs [Homebrew](https://brew.sh). Then:

```sh
git clone https://github.com/ZhYGuoL/dotfiles.git ~/dotfiles
cd ~/dotfiles && ./install.sh
```

The script installs Ghostty, the font, tmux, Neovim, Starship, ripgrep, fd and node, then copies the configs into place. Any config you already had gets moved to `~/.dotfiles-backup-<date>/` first, so nothing is lost.

After it finishes: quit and reopen Ghostty, run `tmux`, then run `nvim` (the first launch downloads plugins, takes a minute).

To pick up changes later: `cd ~/dotfiles && git pull && ./install.sh`.

## What's in here

| Folder | Goes to | What it does |
|---|---|---|
| `ghostty/config` | `~/.config/ghostty/config` | Terminal: theme, font, title bar, keys |
| `tmux/tmux.conf` | `~/.tmux.conf` | Splits, tabs, status bar at the top |
| `nvim/` | `~/.config/nvim/` | LazyVim + Rose Pine + markdown tools |
| `starship/starship.toml` | `~/.config/starship.toml` | Two-line prompt with folder + git branch |

## Cheat sheet

**tmux** (prefix is `Ctrl-a`: press it, let go, then the key)

| Keys | Does |
|---|---|
| `Ctrl-a` then `\|` | split side by side |
| `Ctrl-a` then `-` | split top/bottom |
| `Ctrl-h/j/k/l` | move between panes (also works inside Neovim splits) |
| `Ctrl-a` then `h/j/k/l` | resize pane |
| `Ctrl-a` then `m` | zoom the current pane in/out |
| `Ctrl-a` then `c` | new window (tab) |
| `Ctrl-a` then `1`, `2`, ... | jump to window |
| `Ctrl-a` then `r` | reload tmux config |

The text in panes you're not focused on is dimmed on purpose so the active one stands out. Dragging with the mouse copies to the clipboard.

**Neovim**: `Space` is the leader key, and pressing it shows a menu of everything. `Space z` is zen mode for writing, `Space mp` previews markdown in the browser.

## Things you might want to change

- `macos-option-as-alt = true` (Ghostty) makes Option act as Alt for tmux/Neovim shortcuts. If you type accented characters with Option (é, ñ), set it to `right` or delete the line.
- `copy-on-select = clipboard` (Ghostty) copies anything you highlight straight to the clipboard.
- `macos-icon = custom-style` (Ghostty) recolors the Dock icon purple. Use `macos-icon = official` for the normal one.
- `font-size = 14` (Ghostty) if the text feels too big or small.

Most settings have a comment above them explaining what they do.
