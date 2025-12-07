# Neovim 配置完整功能指南

## 📦 已安装插件列表 (共 40+ 个插件)

### 🎨 UI 界面增强
- **solarized-osaka.nvim** - 主题配色
- **bufferline.nvim** - 顶部标签栏
- **lualine.nvim** - 底部状态栏
- **incline.nvim** - 浮动文件名显示
- **noice.nvim** - 增强的命令行和通知界面
- **nvim-notify** - 美观的通知弹窗
- **zen-mode.nvim** - 专注模式
- **nvim-highlight-colors** - 颜色代码高亮显示
- **dashboard (snacks.nvim)** - 启动页面

### 🔍 文件搜索与导航
- **telescope.nvim** - 模糊搜索核心
- **telescope-fzf-native.nvim** - FZF 原生搜索加速
- **telescope-file-browser.nvim** - 文件浏览器

### 💻 代码编辑与补全
- **blink.cmp** - 代码补全引擎
- **nvim-treesitter** - 语法高亮和代码理解
- **nvim-treesitter-textobjects** - 基于语法的文本对象
- **nvim-ts-autotag** - HTML/JSX 标签自动闭合
- **mini.pairs** - 自动括号配对
- **mini.ai** - 增强的文本对象
- **friendly-snippets** - 代码片段集合

### 🛠️ LSP 与开发工具
- **nvim-lspconfig** - LSP 配置
- **mason.nvim** - LSP/DAP/Linter 包管理器
- **mason-lspconfig.nvim** - Mason 与 LSP 集成
- **conform.nvim** - 代码格式化
- **nvim-lint** - 代码检查
- **lazydev.nvim** - Neovim Lua 开发支持

### 🎯 语言特定支持
- **rustaceanvim** - Rust 开发支持
- **crates.nvim** - Rust crates.io 集成
- **typescript-language-server** - TypeScript/JavaScript
- **tailwindcss-language-server** - TailwindCSS
- **css-lsp** - CSS
- **lua_ls** - Lua

### 🔧 实用工具
- **inc-rename.nvim** - 实时重命名预览
- **dial.nvim** - 增强的递增/递减
- **mini.bracketed** - 方括号导航
- **mini.hipatterns** - 文本模式高亮
- **toggleterm.nvim** - 终端管理
- **which-key.nvim** - 快捷键提示
- **todo-comments.nvim** - TODO 注释高亮
- **trouble.nvim** - 诊断面板
- **persistence.nvim** - 会话管理

### 📝 Git 集成
- **gitsigns.nvim** - Git 状态显示
- **git.nvim** - Git 操作集成
- **grug-far.nvim** - 搜索和替换

### 🎛️ 其他
- **lazy.nvim** - 插件管理器
- **plenary.nvim** - Lua 函数库
- **nui.nvim** - UI 组件库
- **dressing.nvim** - 改进的 UI 选择器
- **close-buffers.nvim** - 批量关闭缓冲区

---

## ⌨️ 完整快捷键列表

### 基础操作

| 快捷键 | 模式 | 功能 | 说明 |
|--------|------|------|------|
| `Space` | N | Leader 键 | 所有 leader 组合的前缀 |
| `x` | N | 删除字符 | 不影响寄存器 |
| `dw` | N | 向后删除单词 | 不影响寄存器 |

### 📋 寄存器操作（不影响剪贴板）

| 快捷键 | 模式 | 功能 |
|--------|------|------|
| `<Leader>d` | N/V | 删除（不存入寄存器） |
| `<Leader>D` | N/V | 删除到行尾（不存入寄存器） |
| `<Leader>c` | N/V | 修改（不存入寄存器） |
| `<Leader>C` | N/V | 修改到行尾（不存入寄存器） |
| `<Leader>p` | N/V | 粘贴（从 0 寄存器） |
| `<Leader>P` | N/V | 向前粘贴（从 0 寄存器） |

### 🔢 数字递增/递减

| 快捷键 | 功能 | 增强功能 |
|--------|------|----------|
| `+` | 递增 | 支持数字、日期、布尔值、let/const 切换 |
| `-` | 递减 | 同上 |
| `<C-a>` | 递增 | dial.nvim 增强版本 |
| `<C-x>` | 递减 | dial.nvim 增强版本 |

### 🎯 选择操作

| 快捷键 | 功能 |
|--------|------|
| `<C-a>` | 全选 |

### 📝 行操作

| 快捷键 | 功能 |
|--------|------|
| `<Leader>o` | 下方插入新行（不进入插入模式） |
| `<Leader>O` | 上方插入新行（不进入插入模式） |

### 🪟 窗口管理

| 快捷键 | 功能 |
|--------|------|
| `ss` | 水平分割窗口 |
| `sv` | 垂直分割窗口 |
| `sh` | 移动到左侧窗口 |
| `sj` | 移动到下方窗口 |
| `sk` | 移动到上方窗口 |
| `sl` | 移动到右侧窗口 |
| `<C-w><left>` | 窗口缩小（宽度） |
| `<C-w><right>` | 窗口增大（宽度） |
| `<C-w><up>` | 窗口增大（高度） |
| `<C-w><down>` | 窗口缩小（高度） |

### 📑 标签页管理

| 快捷键 | 功能 |
|--------|------|
| `te` | 新建标签页 |
| `<Tab>` | 下一个标签页 |
| `<Shift-Tab>` | 上一个标签页 |

### 🔍 Telescope 搜索

| 快捷键 | 功能 | 详细说明 |
|--------|------|----------|
| `;f` | 查找文件 | 在当前目录查找，尊重 .gitignore |
| `;r` | 实时搜索 | 在文件内容中搜索文本 |
| `;;` | 恢复上次搜索 | 继续上一个 Telescope 会话 |
| `;e` | 诊断列表 | 显示所有错误和警告 |
| `;t` | 帮助标签 | 搜索 Vim 帮助文档 |
| `;s` | Treesitter 符号 | 列出函数、变量等 |
| `;c` | LSP 调用 | 显示函数被调用的位置 |
| `\\` | 缓冲区列表 | 显示已打开的文件 |
| `sf` | 文件浏览器 | 在当前文件目录打开文件浏览器 |
| `<leader>e` | 文件浏览器 | 同上 |
| `<leader>fP` | 插件文件 | 搜索插件配置文件 |

#### Telescope 文件浏览器内快捷键

| 快捷键 | 功能 |
|--------|------|
| `N` | 创建新文件/文件夹 |
| `h` | 返回上级目录 |
| `/` | 进入插入模式搜索 |
| `<C-u>` | 向上滚动 10 行 |
| `<C-d>` | 向下滚动 10 行 |
| `Enter` | 打开文件/进入目录 |

### 🖥️ 终端 (toggleterm.nvim)

| 快捷键 | 模式 | 功能 |
|--------|------|------|
| `<C-/>` | N/T | 切换浮动终端 |
| `<leader>tf` | N | 浮动终端 |
| `<leader>th` | N | 水平终端 |
| `<leader>tv` | N | 垂直终端 |
| `<Esc>` | T | 退出终端模式 |
| `jk` | T | 退出终端模式 |

### 💡 LSP 功能

| 快捷键 | 功能 |
|--------|------|
| `gd` | 跳转到定义 |
| `<leader>i` | 切换 Inlay Hints |
| `:ToggleAutoformat` | 切换自动格式化 |
| `<C-j>` | 跳转到下一个诊断 |

### 🎨 颜色工具

| 快捷键 | 功能 |
|--------|------|
| `<leader>r` | 将十六进制颜色转换为 HSL |

### 📦 缓冲区管理

| 快捷键 | 功能 |
|--------|------|
| `<leader>th` | 关闭隐藏的缓冲区 |
| `<leader>tu` | 关闭未命名的缓冲区 |

### 🧘 专注模式

| 快捷键 | 功能 |
|--------|------|
| `<leader>z` | 切换 Zen Mode |

### 📌 Git 操作

| 快捷键 | 功能 |
|--------|------|
| `<Leader>gb` | Git Blame |
| `<Leader>go` | 在浏览器中打开 Git 仓库 |

### 🔄 跳转列表

| 快捷键 | 功能 |
|--------|------|
| `<C-m>` | 向前跳转 |

### 🎪 LazyVim 默认快捷键

LazyVim 还提供了许多默认快捷键，主要包括：

#### 文件操作
- `<leader>fn` - 新文件
- `<leader>qq` - 退出所有
- `<leader>fs` - 保存文件

#### LSP 操作
- `K` - 显示悬停文档
- `gD` - 跳转到声明
- `gi` - 跳转到实现
- `gr` - 跳转到引用
- `<leader>ca` - 代码操作
- `<leader>rn` - 重命名

#### 诊断
- `[d` - 上一个诊断
- `]d` - 下一个诊断
- `<leader>q` - 诊断列表

---

## 🎯 特殊功能说明

### Cowboy 模式
如果你快速连续按 `hjkl+-` 超过 10 次，会收到 "Hold it Cowboy! 🤠" 警告，提醒你使用更高效的移动方式。

### 颜色高亮
代码中的颜色代码（#fff, rgb(), hsl(), Tailwind 颜色类等）会自动显示对应颜色的背景。

### 自动补全
使用 blink.cmp 提供快速的代码补全，支持：
- LSP 补全
- 代码片段
- 路径补全
- 缓冲区文字补全

### Treesitter 增强
提供精确的语法高亮和代码理解，支持：
- 智能文本对象选择
- 自动 HTML/JSX 标签闭合
- 代码折叠

---

## 💡 使用技巧

1. **查看所有快捷键**: 按 `Space` 然后等待，`which-key` 会显示可用选项
2. **搜索帮助**: 使用 `;t` 搜索任何 Vim 命令的帮助
3. **文件导航**: 优先使用 `;f` 搜索文件，比传统文件树更快
4. **代码跳转**: 使用 `gd` 跳转定义，`gr` 查看引用
5. **诊断问题**: 按 `;e` 查看所有错误和警告
6. **调试工具**: 使用全局函数 `dd(value)` 在通知中查看变量值

---

## 🔧 已配置的 LSP 服务器

- **TypeScript/JavaScript**: tsserver
- **Lua**: lua_ls
- **CSS**: cssls
- **HTML**: html
- **YAML**: yamlls
- **TailwindCSS**: tailwindcss-language-server
- **Rust**: rust-analyzer (via rustaceanvim)

---

## 🎨 主题和外观

- **主题**: Solarized Osaka
- **字体**: 使用 Nerd Font（支持图标）
- **状态栏**: Lualine（底部）
- **标签栏**: Bufferline（顶部）
- **浮动文件名**: Incline（右上角）
- **通知**: Nvim-notify（右上角弹窗）

---

## 📚 常用命令

| 命令 | 功能 |
|------|------|
| `:Lazy` | 打开插件管理器 |
| `:Mason` | 打开 LSP/工具管理器 |
| `:Telescope` | 列出所有 Telescope 命令 |
| `:ToggleTerm` | 打开终端 |
| `:ZenMode` | 切换专注模式 |
| `:IncRename` | 交互式重命名 |
| `:Noice` | 查看消息历史 |
| `:checkhealth` | 检查配置健康状态 |

---

这就是你的完整 Neovim 配置！所有功能都已经设置好并可以使用。
