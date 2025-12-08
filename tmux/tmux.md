# Tmux Configuration - Keyboard Shortcuts Reference

## Overview

This document provides a complete reference for all keyboard shortcuts in your tmux configuration.

- **Prefix Key**: `Ctrl-t` (changed from default `Ctrl-b`)
- **Window/Pane Indexing**: Starts from 1 (not 0)
- **Mode**: Vi keybindings enabled

---

## General Commands

| Shortcut | Description |
|----------|-------------|
| `Prefix + r` | Reload tmux configuration |
| `Prefix + o` | Open current directory in Finder (macOS) |
| `Prefix + e` | Kill all panes except the current one |
| `Prefix + g` | Open lazygit in a popup window (80% width/height) |

---

## Window (Tab) Management

### Switching Windows

| Shortcut | Description |
|----------|-------------|
| `Prefix + 1` | Switch to window 1 (first window) |
| `Prefix + 2` | Switch to window 2 |
| `Prefix + 3` | Switch to window 3 |
| `Prefix + ...` | Switch to window N |
| `Prefix + n` | Next window |
| `Prefix + p` | Previous window |
| `Prefix + l` | Last (previously active) window |
| `Prefix + w` | List all windows (interactive) |

### Creating/Closing Windows

| Shortcut | Description |
|----------|-------------|
| `Prefix + c` | Create a new window |
| `Prefix + &` | Kill current window (with confirmation) |
| `Prefix + ,` | Rename current window |

### Moving Windows

| Shortcut | Description |
|----------|-------------|
| `Ctrl-Shift-Left` | Swap window with the one on the left |
| `Ctrl-Shift-Right` | Swap window with the one on the right |

---

## Pane Management

### Splitting Panes (tmux-pain-control plugin)

| Shortcut | Description |
|----------|-------------|
| `Prefix + \|` | Split pane horizontally (side by side) |
| `Prefix + -` | Split pane vertically (top/bottom) |
| `Prefix + _` | Split pane vertically (full width) |
| `Prefix + \` | Split pane horizontally (full height) |

### Navigating Panes (tmux-pain-control plugin)

| Shortcut | Description |
|----------|-------------|
| `Prefix + h` | Move to left pane |
| `Prefix + j` | Move to pane below |
| `Prefix + k` | Move to pane above |
| `Prefix + l` | Move to right pane |

### Resizing Panes (tmux-pain-control plugin)

| Shortcut | Description |
|----------|-------------|
| `Prefix + H` | Resize pane left |
| `Prefix + J` | Resize pane down |
| `Prefix + K` | Resize pane up |
| `Prefix + L` | Resize pane right |

### Other Pane Operations

| Shortcut | Description |
|----------|-------------|
| `Prefix + x` | Kill current pane (with confirmation) |
| `Prefix + z` | Toggle pane zoom (fullscreen) |
| `Prefix + q` | Display pane numbers |
| `Prefix + {` | Swap with previous pane |
| `Prefix + }` | Swap with next pane |
| `Prefix + Space` | Cycle through pane layouts |
| `Prefix + !` | Convert pane to a new window |

---

## Copy Mode (Vi Keys)

Enter copy mode with `Prefix + [`

### Navigation in Copy Mode

| Shortcut | Description |
|----------|-------------|
| `h` | Move cursor left |
| `j` | Move cursor down |
| `k` | Move cursor up |
| `l` | Move cursor right |
| `w` | Move forward one word |
| `b` | Move backward one word |
| `0` | Move to start of line |
| `$` | Move to end of line |
| `g` | Go to top of buffer |
| `G` | Go to bottom of buffer |
| `Ctrl-u` | Page up |
| `Ctrl-d` | Page down |
| `/` | Search forward |
| `?` | Search backward |
| `n` | Next search match |
| `N` | Previous search match |

### Selection and Copying

| Shortcut | Description |
|----------|-------------|
| `Space` | Start selection |
| `v` | Start selection (visual mode) |
| `Enter` | Copy selection and exit copy mode |
| `y` | Copy selection |
| `Escape` | Clear selection |
| `q` | Exit copy mode |

### Pasting

| Shortcut | Description |
|----------|-------------|
| `Prefix + ]` | Paste from tmux buffer |

---

## Session Management

| Shortcut | Description |
|----------|-------------|
| `Prefix + d` | Detach from session |
| `Prefix + s` | List/switch sessions |
| `Prefix + $` | Rename current session |
| `Prefix + (` | Switch to previous session |
| `Prefix + )` | Switch to next session |

---

## Miscellaneous

| Shortcut | Description |
|----------|-------------|
| `Prefix + t` | Show clock |
| `Prefix + ?` | List all key bindings |
| `Prefix + :` | Enter command mode |
| `Prefix + ~` | Show previous tmux messages |

---

## Status Bar Information

Your status bar displays:

- **Left side**: `Session:Window.Pane` | Username
- **Center**: Window list with current path
- **Right side**: Hostname

---

## Configuration Files

| File | Purpose |
|------|---------|
| `tmux.conf` | Main configuration |
| `macos.conf` | macOS-specific settings (clipboard, undercurl) |
| `theme.conf` | Color scheme (Solarized) |
| `statusline.conf` | Status bar layout and styling |
| `utility.conf` | Utility shortcuts (lazygit) |

---

## Plugins

- **tpm**: Tmux Plugin Manager
- **tmux-pain-control**: Pane navigation and management

---

## Quick Reference Card

```
Prefix = Ctrl-t

Windows:          Panes:              Other:
c - new           | - split horiz     r - reload config
1-9 - switch      - - split vert      g - lazygit
n/p - next/prev   h/j/k/l - navigate  [ - copy mode
& - kill          H/J/K/L - resize    d - detach
, - rename        x - kill            ? - help
                  z - zoom
```

---

*Generated from configuration at `~/.config/tmux/`*
