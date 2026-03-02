# Neovim 插件与快捷键说明

## 0. 来源与说明

- 插件清单来源：`lazy-lock.json`
- 自定义配置来源：`lua/config/keymaps.lua`、`lua/plugins/*.lua`、`lua/config/options.lua`
- LazyVim 默认键位来源：https://www.lazyvim.org/keymaps
- 说明：若本地配置与 LazyVim 默认键位冲突，以**本地配置为准**。

## 1. 基本键位

- `<leader>`：`<space>`（见 `lua/config/options.lua`）
- `<localleader>`：LazyVim 默认 `\`（本地未覆写）

## 2. 插件清单（已安装）

以下为当前 `lazy-lock.json` 中已安装的插件：

- `LazyVim`
- `SchemaStore.nvim`
- `blink.cmp`
- `bufferline.nvim`
- `catppuccin`
- `close-buffers.nvim`
- `conform.nvim`
- `crates.nvim`
- `dial.nvim`
- `dressing.nvim`
- `friendly-snippets`
- `git.nvim`
- `gitsigns.nvim`
- `grug-far.nvim`
- `inc-rename.nvim`
- `incline.nvim`
- `lazy.nvim`
- `lazydev.nvim`
- `lualine.nvim`
- `mason-lspconfig.nvim`
- `mason.nvim`
- `mini.ai`
- `mini.bracketed`
- `mini.hipatterns`
- `mini.icons`
- `mini.pairs`
- `noice.nvim`
- `nui.nvim`
- `nvim-highlight-colors`
- `nvim-lint`
- `nvim-lspconfig`
- `nvim-notify`
- `nvim-treesitter`
- `nvim-treesitter-textobjects`
- `nvim-ts-autotag`
- `persistence.nvim`
- `playground`
- `plenary.nvim`
- `rustaceanvim`
- `smear-cursor.nvim`
- `snacks.nvim`
- `solarized-osaka.nvim`
- `telescope-file-browser.nvim`
- `telescope-fzf-native.nvim`
- `telescope.nvim`
- `todo-comments.nvim`
- `toggleterm.nvim`
- `tokyonight.nvim`
- `trouble.nvim`
- `ts-comments.nvim`
- `which-key.nvim`
- `zen-mode.nvim`

> 说明：其中部分插件由 LazyVim 默认/Extras 引入，部分在 `lua/plugins/*.lua` 有自定义配置。

## 3. 自定义全局快捷键（本地配置）

来源：`lua/config/keymaps.lua`

### 3.1 不污染寄存器的删除/替换

| 按键 | 模式 | 功能 |
| --- | --- | --- |
| `x` | n | 删除字符但不写寄存器 |
| `<leader>p` | n | 用 0 号寄存器粘贴 |
| `<leader>P` | n | 用 0 号寄存器向前粘贴 |
| `<leader>p` | v | 用 0 号寄存器粘贴（替换选区） |
| `<leader>c` | n | 替换但不写寄存器 |
| `<leader>C` | n | 替换到行尾但不写寄存器 |
| `<leader>c` | v | 替换选区但不写寄存器 |
| `<leader>C` | v | 同上 |
| `<leader>d` | n | 删除但不写寄存器 |
| `<leader>D` | n | 删除到行尾但不写寄存器 |
| `<leader>d` | v | 删除选区但不写寄存器 |
| `<leader>D` | v | 同上 |

### 3.2 增减与选择

| 按键 | 模式 | 功能 |
| --- | --- | --- |
| `+` | n | 递增（等价 `<C-a>`） |
| `-` | n | 递减（等价 `<C-x>`） |
| `dw` | n | 向后删词但不写寄存器 |
| `<C-a>` | n | 全选（`gg<S-v>G`） |

### 3.3 续行与跳转

| 按键 | 模式 | 功能 |
| --- | --- | --- |
| `<leader>o` | n | 新开一行并保持当前行缩进（禁用续行） |
| `<leader>O` | n | 向上新开一行（禁用续行） |
| `<C-m>` | n | 等价 `<C-i>`（jump list 前进） |

### 3.4 Tab 与窗口

| 按键 | 模式 | 功能 |
| --- | --- | --- |
| `te` | n | 新建 Tab |
| `<tab>` | n | 下一个 Tab |
| `<s-tab>` | n | 上一个 Tab |
| `ss` | n | 水平分屏 |
| `sv` | n | 垂直分屏 |
| `sh`/`sj`/`sk`/`sl` | n | 切换窗口 |
| `<C-w><left>` | n | 缩小宽度 |
| `<C-w><right>` | n | 增加宽度 |
| `<C-w><up>` | n | 增加高度 |
| `<C-w><down>` | n | 缩小高度 |

### 3.5 诊断与工具

| 按键 | 模式 | 功能 |
| --- | --- | --- |
| `<C-j>` | n | 下一个诊断 |
| `<leader>r` | n | 颜色：Hex → HSL |
| `<leader>i` | n | LSP Inlay Hints 开关 |
| `:ToggleAutoformat` | 命令 | 切换自动格式化 |

### 3.6 文件浏览器

| 按键 | 模式 | 功能 |
| --- | --- | --- |
| `<leader>e` | n | Telescope File Browser（当前文件目录） |

### 3.7 Cowboy 模式

来源：`lua/craftzdog/discipline.lua`（按键节制提醒）

| 按键 | 模式 | 功能 |
| --- | --- | --- |
| `h/j/k/l/+/-` | n | 高频重复会弹出 “Hold it Cowboy!” 提醒 |

## 4. 插件相关快捷键（本地配置定义）

### 4.1 Telescope (`lua/plugins/editor.lua`)

| 按键 | 模式 | 功能 |
| --- | --- | --- |
| `<leader>fP` | n | 查找插件文件（Lazy root） |
| `;f` | n | 查找文件 |
| `;r` | n | Live Grep |
| `\\` | n | 列出 Buffers |
| `;t` | n | Help Tags |
| `;;` | n | Resume 上次 Telescope |
| `;e` | n | 诊断列表 |
| `;s` | n | Treesitter Symbols |
| `;c` | n | LSP Incoming Calls |
| `sf` | n | 文件浏览器（当前文件目录） |

### 4.2 ToggleTerm (`lua/plugins/terminal.lua`)

| 按键 | 模式 | 功能 |
| --- | --- | --- |
| `<C-/>` | n/t | 切换终端 |
| `<leader>tf` | n | 浮动终端 |
| `<leader>th` | n | 水平终端 |
| `<leader>tv` | n | 垂直终端 |
| `<esc>` | t | 退出终端模式 |
| `jk` | t | 退出终端模式 |

### 4.3 close-buffers.nvim (`lua/plugins/editor.lua`)

| 按键 | 模式 | 功能 |
| --- | --- | --- |
| `<leader>th` | n | 关闭隐藏 buffer |
| `<leader>tu` | n | 关闭无名 buffer |

### 4.4 bufferline.nvim (`lua/plugins/ui.lua`)

| 按键 | 模式 | 功能 |
| --- | --- | --- |
| `<Tab>` | n | 下一个 Tab |
| `<S-Tab>` | n | 上一个 Tab |

### 4.5 zen-mode.nvim (`lua/plugins/ui.lua`)

| 按键 | 模式 | 功能 |
| --- | --- | --- |
| `<leader>z` | n | 进入 Zen Mode |

### 4.6 Treesitter Playground (`lua/plugins/treesitter.lua`)

| 按键 | 作用域 | 功能 |
| --- | --- | --- |
| `o` | TSPlayground | 切换 Query Editor |
| `i` | TSPlayground | 切换高亮组 |
| `t` | TSPlayground | 切换注入语言 |
| `a` | TSPlayground | 切换匿名节点 |
| `I` | TSPlayground | 切换语言显示 |
| `f` | TSPlayground | Focus 语言 |
| `F` | TSPlayground | Unfocus 语言 |
| `R` | TSPlayground | 刷新 |
| `<cr>` | TSPlayground | 跳转到节点 |
| `?` | TSPlayground | 帮助 |

### 4.7 LSP Goto Definition 覆写 (`lua/plugins/lsp.lua`)

| 按键 | 模式 | 功能 |
| --- | --- | --- |
| `gd` | n | 使用 Telescope 打开定义（不复用窗口） |

### 4.8 dial.nvim (`lua/plugins/coding.lua`)

| 按键 | 模式 | 功能 |
| --- | --- | --- |
| `<C-a>` | n | 增加（Dial） |
| `<C-x>` | n | 减少（Dial） |

### 4.9 smear-cursor.nvim (`lua/plugins/smear_cursor.lua`)

- 当前未配置快捷键。插件命令：`:SmearCursorToggle`（见上游文档）。

## 5. LazyVim 默认快捷键（官方文档）

来源：https://www.lazyvim.org/keymaps

### 5.1 General

| 按键 | 描述 | 模式 |
| --- | --- | --- |
| `j` | Down | n, x |
| `<Down>` | Down | n, x |
| `k` | Up | n, x |
| `<Up>` | Up | n, x |
| `<C-h>` | Go to Left Window | n |
| `<C-j>` | Go to Lower Window | n |
| `<C-k>` | Go to Upper Window | n |
| `<C-l>` | Go to Right Window | n |
| `<C-Up>` | Increase Window Height | n |
| `<C-Down>` | Decrease Window Height | n |
| `<C-Left>` | Decrease Window Width | n |
| `<C-Right>` | Increase Window Width | n |
| `<A-j>` | Move Down | n, i, v |
| `<A-k>` | Move Up | n, i, v |
| `<S-h>` | Prev Buffer | n |
| `<S-l>` | Next Buffer | n |
| `[b` | Prev Buffer | n |
| `]b` | Next Buffer | n |
| `<leader>bb` | Switch to Other Buffer | n |
| `<leader>`(反引号) | Switch to Other Buffer | n |
| `<leader>bd` | Delete Buffer | n |
| `<leader>bo` | Delete Other Buffers | n |
| `<leader>bD` | Delete Buffer and Window | n |
| `<esc>` | Escape and Clear hlsearch | i, n, s |
| `<leader>ur` | Redraw / Clear hlsearch / Diff Update | n |
| `n` | Next Search Result | n, x, o |
| `N` | Prev Search Result | n, x, o |
| `<C-s>` | Save File | i, x, n, s |
| `<leader>K` | Keywordprg | n |
| `gco` | Add Comment Below | n |
| `gcO` | Add Comment Above | n |
| `<leader>l` | Lazy | n |
| `<leader>fn` | New File | n |
| `<leader>xl` | Location List | n |
| `<leader>xq` | Quickfix List | n |
| `[q` | Previous Quickfix | n |
| `]q` | Next Quickfix | n |
| `<leader>cf` | Format | n, x |
| `<leader>cd` | Line Diagnostics | n |
| `]d` | Next Diagnostic | n |
| `[d` | Prev Diagnostic | n |
| `]e` | Next Error | n |
| `[e` | Prev Error | n |
| `]w` | Next Warning | n |
| `[w` | Prev Warning | n |
| `<leader>uf` | Toggle Auto Format (Global) | n |
| `<leader>uF` | Toggle Auto Format (Buffer) | n |
| `<leader>us` | Toggle Spelling | n |
| `<leader>uw` | Toggle Wrap | n |
| `<leader>uL` | Toggle Relative Number | n |
| `<leader>ud` | Toggle Diagnostics | n |
| `<leader>ul` | Toggle Line Numbers | n |
| `<leader>uc` | Toggle Conceal Level | n |
| `<leader>uA` | Toggle Tabline | n |
| `<leader>uT` | Toggle Treesitter Highlight | n |
| `<leader>ub` | Toggle Dark Background | n |
| `<leader>uD` | Toggle Dimming | n |
| `<leader>ua` | Toggle Animations | n |
| `<leader>ug` | Toggle Indent Guides | n |
| `<leader>uS` | Toggle Smooth Scroll | n |
| `<leader>dpp` | Toggle Profiler | n |
| `<leader>dph` | Toggle Profiler Highlights | n |
| `<leader>uh` | Toggle Inlay Hints | n |
| `<leader>gL` | Git Log (cwd) | n |
| `<leader>gb` | Git Blame Line | n |
| `<leader>gf` | Git Current File History | n |
| `<leader>gl` | Git Log | n |
| `<leader>gB` | Git Browse (open) | n, x |
| `<leader>gY` | Git Browse (copy) | n, x |
| `<leader>qq` | Quit All | n |
| `<leader>ui` | Inspect Pos | n |
| `<leader>uI` | Inspect Tree | n |
| `<leader>L` | LazyVim Changelog | n |
| `<leader>fT` | Terminal (cwd) | n |
| `<leader>ft` | Terminal (Root Dir) | n |
| `<c-/>` | Terminal (Root Dir) | n, t |
| `<c-_>` | which_key_ignore | n, t |
| `<leader>-` | Split Window Below | n |
| `<leader>|` | Split Window Right | n |
| `<leader>wd` | Delete Window | n |
| `<leader>wm` | Toggle Zoom Mode | n |
| `<leader>uZ` | Toggle Zoom Mode | n |
| `<leader>uz` | Toggle Zen Mode | n |
| `<leader><tab>l` | Last Tab | n |
| `<leader><tab>o` | Close Other Tabs | n |
| `<leader><tab>f` | First Tab | n |
| `<leader><tab><tab>` | New Tab | n |
| `<leader><tab>]` | Next Tab | n |
| `<leader><tab>d` | Close Tab | n |
| `<leader><tab>[` | Previous Tab | n |

### 5.2 LSP

| 按键 | 描述 | 模式 |
| --- | --- | --- |
| `<leader>cl` | Lsp Info | n |
| `gd` | Goto Definition | n |
| `gr` | References | n |
| `gI` | Goto Implementation | n |
| `gy` | Goto Type Definition | n |
| `gD` | Goto Declaration | n |
| `K` | Hover | n |
| `gK` | Signature Help | n |
| `<c-k>` | Signature Help | i |
| `<leader>ca` | Code Action | n, x |
| `<leader>cc` | Run Codelens | n, x |
| `<leader>cC` | Refresh & Display Codelens | n |
| `<leader>cR` | Rename File | n |
| `<leader>cr` | Rename | n |
| `<leader>cA` | Source Action | n |
| `]]` | Next Reference | n |
| `[[` | Prev Reference | n |
| `<a-n>` | Next Reference | n |
| `<a-p>` | Prev Reference | n |
| `<leader>ss` | LSP Symbols | n |
| `<leader>sS` | LSP Workspace Symbols | n |
| `gai` | Calls Incoming | n |
| `gao` | Calls Outgoing | n |

### 5.3 bufferline.nvim

| 按键 | 描述 | 模式 |
| --- | --- | --- |
| `<leader>bl` | Delete Buffers to the Left | n |
| `<leader>bp` | Toggle Pin | n |
| `<leader>bP` | Delete Non-Pinned Buffers | n |
| `<leader>br` | Delete Buffers to the Right | n |
| `[b` | Prev Buffer | n |
| `[B` | Move buffer prev | n |
| `]b` | Next Buffer | n |
| `]B` | Move buffer next | n |
| `<S-h>` | Prev Buffer | n |
| `<S-l>` | Next Buffer | n |

### 5.4 conform.nvim

| 按键 | 描述 | 模式 |
| --- | --- | --- |
| `<leader>cF` | Format Injected Langs | n, x |

### 5.5 grug-far.nvim

| 按键 | 描述 | 模式 |
| --- | --- | --- |
| `<leader>sr` | Search and Replace | n, x |

### 5.6 mason.nvim

| 按键 | 描述 | 模式 |
| --- | --- | --- |
| `<leader>cm` | Mason | n |

### 5.7 noice.nvim

| 按键 | 描述 | 模式 |
| --- | --- | --- |
| `<c-b>` | Scroll Backward | n, i, s |
| `<c-f>` | Scroll Forward | n, i, s |
| `<leader>sn` | +noice | n |
| `<leader>sna` | Noice All | n |
| `<leader>snd` | Dismiss All | n |
| `<leader>snh` | Noice History | n |
| `<leader>snl` | Noice Last Message | n |
| `<leader>snt` | Noice Picker (Telescope/FzfLua) | n |
| `<S-Enter>` | Redirect Cmdline | c |

### 5.8 persistence.nvim

| 按键 | 描述 | 模式 |
| --- | --- | --- |
| `<leader>qd` | Don't Save Current Session | n |
| `<leader>ql` | Restore Last Session | n |
| `<leader>qs` | Restore Session | n |
| `<leader>qS` | Select Session | n |

### 5.9 snacks.nvim

| 按键 | 描述 | 模式 |
| --- | --- | --- |
| `<leader><space>` | Find Files (Root Dir) | n |
| `<leader>,` | Buffers | n |
| `<leader>.` | Toggle Scratch Buffer | n |
| `<leader>/` | Grep (Root Dir) | n |
| `<leader>:` | Command History | n |
| `<leader>dps` | Profiler Scratch Buffer | n |
| `<leader>e` | Explorer Snacks (root dir) | n |
| `<leader>E` | Explorer Snacks (cwd) | n |
| `<leader>fb` | Buffers | n |
| `<leader>fB` | Buffers (all) | n |
| `<leader>fc` | Find Config File | n |
| `<leader>fe` | Explorer Snacks (root dir) | n |
| `<leader>fE` | Explorer Snacks (cwd) | n |
| `<leader>ff` | Find Files (Root Dir) | n |
| `<leader>fF` | Find Files (cwd) | n |
| `<leader>fg` | Find Files (git-files) | n |
| `<leader>fp` | Projects | n |
| `<leader>fr` | Recent | n |
| `<leader>fR` | Recent (cwd) | n |
| `<leader>gd` | Git Diff (hunks) | n |
| `<leader>gD` | Git Diff (origin) | n |
| `<leader>gi` | GitHub Issues (open) | n |
| `<leader>gI` | GitHub Issues (all) | n |
| `<leader>gp` | GitHub Pull Requests (open) | n |
| `<leader>gP` | GitHub Pull Requests (all) | n |
| `<leader>gs` | Git Status | n |
| `<leader>gS` | Git Stash | n |
| `<leader>n` | Notification History | n |
| `<leader>S` | Select Scratch Buffer | n |
| `<leader>s"` | Registers | n |
| `<leader>s/` | Search History | n |
| `<leader>sa` | Autocmds | n |
| `<leader>sb` | Buffer Lines | n |
| `<leader>sB` | Grep Open Buffers | n |
| `<leader>sc` | Command History | n |
| `<leader>sC` | Commands | n |
| `<leader>sd` | Diagnostics | n |
| `<leader>sD` | Buffer Diagnostics | n |
| `<leader>sg` | Grep (Root Dir) | n |
| `<leader>sG` | Grep (cwd) | n |
| `<leader>sh` | Help Pages | n |
| `<leader>sH` | Highlights | n |
| `<leader>si` | Icons | n |
| `<leader>sj` | Jumps | n |
| `<leader>sk` | Keymaps | n |
| `<leader>sl` | Location List | n |
| `<leader>sm` | Marks | n |
| `<leader>sM` | Man Pages | n |
| `<leader>sp` | Search for Plugin Spec | n |
| `<leader>sq` | Quickfix List | n |
| `<leader>sR` | Resume | n |
| `<leader>su` | Undotree | n |
| `<leader>sw` | Visual selection or word (Root Dir) | n, x |
| `<leader>sW` | Visual selection or word (cwd) | n, x |
| `<leader>uC` | Colorschemes | n |
| `<leader>un` | Dismiss All Notifications | n |

### 5.10 todo-comments.nvim

| 按键 | 描述 | 模式 |
| --- | --- | --- |
| `<leader>st` | Todo | n |
| `<leader>sT` | Todo/Fix/Fixme | n |
| `<leader>xt` | Todo (Trouble) | n |
| `<leader>xT` | Todo/Fix/Fixme (Trouble) | n |
| `[t` | Previous Todo Comment | n |
| `]t` | Next Todo Comment | n |

### 5.11 trouble.nvim

| 按键 | 描述 | 模式 |
| --- | --- | --- |
| `<leader>cs` | Symbols (Trouble) | n |
| `<leader>cS` | LSP references/definitions/... (Trouble) | n |
| `<leader>xL` | Location List (Trouble) | n |
| `<leader>xQ` | Quickfix List (Trouble) | n |
| `<leader>xx` | Diagnostics (Trouble) | n |
| `<leader>xX` | Buffer Diagnostics (Trouble) | n |
| `[q` | Previous Trouble/Quickfix Item | n |
| `]q` | Next Trouble/Quickfix Item | n |

### 5.12 which-key.nvim

| 按键 | 描述 | 模式 |
| --- | --- | --- |
| `<c-w><space>` | Window Hydra Mode (which-key) | n |
| `<leader>?` | Buffer Keymaps (which-key) | n |

## 6. 冲突与覆盖提醒

- `<leader>e`：本地映射为 Telescope 文件浏览器，但 LazyVim 默认映射为 Snacks Explorer。
- `<leader>th`：ToggleTerm 与 close-buffers 都占用该键位。
- `<Tab>/<S-Tab>`：本地 tab 跳转与 bufferline 默认按键相同。
- `<C-a>`：本地全选与 dial.nvim 的递增映射冲突。
- `gd`：本地覆写为 Telescope definitions，不使用 LSP 默认跳转。

## 7. 未显式定义快捷键的插件

以下插件未在本地配置或 LazyVim Keymaps 文档中出现明确快捷键，建议参考各插件文档：

- `SchemaStore.nvim`
- `crates.nvim`
- `dressing.nvim`
- `friendly-snippets`
- `git.nvim`
- `gitsigns.nvim`
- `incline.nvim`
- `lazydev.nvim`
- `mini.ai`
- `mini.bracketed`
- `mini.hipatterns`
- `mini.icons`
- `mini.pairs`
- `nvim-highlight-colors`
- `nvim-lint`
- `nvim-lspconfig`
- `nvim-notify`
- `nvim-treesitter`
- `nvim-treesitter-textobjects`
- `nvim-ts-autotag`
- `playground`
- `plenary.nvim`
- `rustaceanvim`
- `smear-cursor.nvim`
- `snacks.nvim`（除上方默认 keymaps 外）
- `solarized-osaka.nvim`
- `telescope-file-browser.nvim`
- `telescope-fzf-native.nvim`
- `tokyonight.nvim`
- `ts-comments.nvim`
- `which-key.nvim`
