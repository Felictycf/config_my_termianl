# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Overview

This is a Neovim configuration based on LazyVim, a Neovim starter configuration. The setup uses Lua for all configuration and plugin management through lazy.nvim.

## Key Architecture

### Entry Point
- `init.lua`: Main entry point that enables vim.loader for faster startup and sets up global debugging helper `dd()` which calls `util.debug.dump()`
- Loads the lazy.nvim plugin manager via `config.lazy`

### Configuration Structure
The configuration is organized under `lua/` with the following directories:

- `lua/config/`: Core Neovim configuration
  - `lazy.lua`: Lazy.nvim setup and LazyVim plugin imports
  - `options.lua`: Vim options (leader key, indentation, shell settings, etc.)
  - `keymaps.lua`: Custom keybindings
  - `autocmds.lua`: Autocommands for file types and events

- `lua/plugins/`: Plugin configurations (auto-loaded by lazy.nvim)
  - `lsp.lua`: LSP server configurations (Mason, TypeScript, Lua, Tailwind, CSS, etc.)
  - `editor.lua`: Editor plugins (Telescope, file browser, blink.cmp)
  - `ui.lua`: UI plugins (noice, bufferline, incline, lualine, zen-mode, dashboard)
  - `coding.lua`: Coding helpers (inc-rename, mini.bracketed, dial.nvim)
  - `treesitter.lua`: Treesitter configuration
  - `colorscheme.lua`: Color scheme setup
  - `terminal.lua`: Terminal plugin (toggleterm.nvim) configuration

- `lua/craftzdog/`: Custom utility modules
  - `discipline.lua`: "Cowboy" mode that warns when spamming hjkl movements
  - `lsp.lua`: LSP utilities (toggle inlay hints, toggle autoformat)
  - `hsl.lua`: Color conversion utilities (hex to HSL and vice versa)

- `lua/util/`: General utilities
  - `debug.lua`: Debug helpers for dumping values and analyzing memory leaks

### Plugin Management

The configuration uses lazy.nvim and imports LazyVim base configuration plus extras:
- LazyVim base plugins (imported from "lazyvim.plugins")
- Language support: TypeScript, JSON, Rust, Tailwind
- Linting/formatting: ESLint, Prettier
- Utility extras: mini-hipatterns

Custom plugins are defined in `lua/plugins/*.lua` files, which are automatically loaded.

### LSP Configuration

LSP servers are managed through Mason and configured in `lua/plugins/lsp.lua`:
- TypeScript: tsserver with detailed inlay hints configuration
- Tailwind CSS: tailwindcss-language-server
- Lua: lua_ls with workspace and hint settings
- CSS: cssls
- HTML: html
- YAML: yamlls

Inlay hints are disabled by default but can be toggled with `<leader>i` (mapped in `lua/config/keymaps.lua`).

### Custom Keybindings

Notable custom keybindings (see `lua/config/keymaps.lua`):
- Leader key: Space
- Telescope: `;f` (find files), `;r` (live grep), `;;` (resume), `;e` (diagnostics), `sf` (file browser)
- Terminal (toggleterm.nvim):
  - `Ctrl+/` - Toggle floating terminal (keeps session)
  - `<leader>tf` - Toggle floating terminal
  - `<leader>th` - Toggle horizontal terminal
  - `<leader>tv` - Toggle vertical terminal
  - `Esc` or `jk` - Exit terminal mode
- File Explorer: `<leader>e` (Space + e, opens Telescope file browser)
- Window management: `ss` (split), `sv` (vsplit), `sh/sj/sk/sl` (navigate windows)
- Tabs: `te` (new tab), `<Tab>` (next), `<S-Tab>` (prev)
- Register-less operations: `<Leader>d/c/p` to delete/change/paste without affecting registers
- Custom utilities: `<leader>r` (convert hex to HSL), `<leader>i` (toggle inlay hints)

### Important Settings

- Shell: Fish (`vim.opt.shell = "fish"`)
- Indentation: 2 spaces, expandtab enabled
- Mouse: Disabled (`vim.opt.mouse = ""`)
- Spell check: Disabled globally to prevent wavy underlines when typing Chinese
- Picker: Telescope (`vim.g.lazyvim_picker = "telescope"`)
- Completion: blink.cmp (`vim.g.lazyvim_cmp = "blink.cmp"`)
- Prettier: Requires config file (`vim.g.lazyvim_prettier_needs_config = true`)
- Colorscheme: solarized-osaka
- Dev plugins path: `~/.ghq/github.com`
- Terminal: Uses toggleterm.nvim (floating terminal with session persistence)
- File Browser: Uses Telescope file browser extension

### Debugging

Use the global `dd()` function to dump values with notifications:
```lua
dd(some_value)
```

This uses `util.debug.dump()` which shows values in a formatted notification window.

## Working with This Configuration

### Testing Changes
To test configuration changes, restart Neovim or use `:source %` on the modified file (for Lua files).

### Plugin Management
- Check plugin status: `:Lazy`
- Update plugins: `:Lazy update`
- Install new plugins: Add to `lua/plugins/*.lua` and restart

### LSP Commands
- Toggle autoformat: `:ToggleAutoformat`
- Toggle inlay hints: `<leader>i`
- Go to definition: `gd` (opens in new window, not reusing current)

### File Structure Conventions
- New plugins go in `lua/plugins/` as separate `.lua` files returning a table
- Custom utilities go in `lua/craftzdog/` or `lua/util/`
- Lazy.nvim automatically loads all files in `lua/plugins/`
