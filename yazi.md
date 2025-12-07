Yazi 的插件生态（基于 Lua）正在飞速发展。目前官方和社区维护了一些非常“硬核”的插件，能让 Yazi 的体验从“好用的文件管理器”变成“全能终端工作台”。

这是我为你精选的 **Yazi 必备高能插件列表**，涵盖了导航、Git、预览和系统操作四个维度。

-----

### 📦 前置准备：如何安装

Yazi 现在自带包管理器 `ya`。安装命令通常是：
`ya pack -a [插件作者]/[插件名]`

### 🚀 第一梯队：核心增强（必装）

#### 1\. `smart-filter` (智能过滤)

  * **功能：** 之前提到的 `f` 过滤功能的升级版。它会自动把非匹配的文件“变暗”而不是完全隐藏，并且支持更智能的匹配逻辑。
  * **为什么强大：** 让你在过滤时不会丢失上下文（还能看到其他文件在哪里）。
  * **安装：** `ya pack -a yazi-rs/plugins:smart-filter`

#### 2\. `max-preview` (最大化预览)

  * **功能：** 一键将预览窗口（右侧面板）最大化，覆盖掉文件列表。
  * **为什么强大：** 当你在看长代码、Markdown 文档或者大图时，不需要打开 Vim 或外部查看器，直接按个键就能全屏看。
  * **安装：** `ya pack -a yazi-rs/plugins:max-preview`

#### 3\. `full-border` (全边框 UI)

  * **功能：** 给 Yazi 的三个面板（父目录、当前目录、预览）加上完整的边框。
  * **为什么强大：** 看起来只是 UI 调整，但在复杂的终端环境（特别是配合 Tmux 使用时），它能极其清晰地划分界限，视觉体验类似 Neovim 的 Telescope。
  * **安装：** `ya pack -a yazi-rs/plugins:full-border`

-----

### 🔍 第二梯队：搜索与集成（效率神器）

#### 4\. `fg` (FZF / Ripgrep 集成)

  * **功能：** 在 Yazi 内部直接调用 `fzf` 进行模糊搜索，或者用 `rg` (ripgrep) 搜索文件内容。
  * **为什么强大：** 这是 Ranger 用户的痛点，在 Yazi 里被完美解决了。你可以搜索文件名，也可以搜索“包含了某段代码”的文件，选中后直接在 Yazi 中跳转过去。
  * **安装：** `ya pack -a yazi-rs/plugins:fg` (需要系统安装 fzf 和 ripgrep)

#### 5\. `zoxide` (智能目录跳转)

  * **功能：** 如上个回答所述，记录你的访问习惯。
  * **为什么强大：** 它是目前最强的 `cd` 替代品，Yazi 对其支持极好，基本是“装机必备”。
  * **安装：** `ya pack -a yazi-rs/plugins:zoxide` (需要系统安装 zoxide)

-----

### 🛠 第三梯队：开发者与运维

#### 6\. `git` (Git 状态增强)

  * **功能：** 在文件列表旁边显示详细的 Git 状态（新增、修改、冲突），不仅仅是变色，还有图标指示。
  * **为什么强大：** 让你可以扫一眼就知道哪些文件没提交，不用频繁退出去打 `git status`。
  * **安装：** `ya pack -a yazi-rs/plugins:git`

#### 7\. `lazygit` (Lazygit 集成)

  * **功能：** 在当前目录直接弹出一个浮动的 Lazygit 窗口。
  * **为什么强大：** 这是终端里的“核武器”。你在浏览项目目录时，按个键就能完成复杂的 Git 操作（commit, push, resolve conflicts），处理完 ESC 退出，无缝回到 Yazi。
  * **安装：** 需要在 `keymap.toml` 中配置命令调用 `lazygit`（需系统已安装 lazygit）。

#### 8\. `chmod` (快速权限修改)

  * **功能：** 类似于 GUI 的权限修改器，通过勾选的方式修改 `rwx` 权限。
  * **为什么强大：** 省去了在大脑中计算 `chmod 755` 还是 `644` 的时间，可视化操作不易出错。
  * **安装：** `ya pack -a yazi-rs/plugins:chmod`

-----

### 📝 如何配置（关键步骤）

插件安装后通常**不会自动生效**，你需要绑定快捷键。
打开 `~/.config/yazi/keymap.toml`，在 `[manager]` 部分添加绑定。

**一个“全家桶”配置示例：**

```toml
[[manager.prepend_keymap]]
# 按 T 开启最大化预览
on   = [ "T" ]
run  = "plugin max-preview"
desc = "Maximize or restore preview"

[[manager.prepend_keymap]]
# 按 Ctrl+f 开启 fzf 文件搜索
on   = [ "<C-f>" ]
run  = "plugin fg"
desc = "Find file by filename"

[[manager.prepend_keymap]]
# 按 Ctrl+g 开启 ripgrep 内容搜索
on   = [ "<C-g>" ]
run  = "plugin fg --args='rg'"
desc = "Find file by content"

[[manager.prepend_keymap]]
# 按 c - m 修改权限
on   = [ "c", "m" ]
run  = "plugin chmod"
desc = "Chmod on selected files"
```

**我的建议：**
先安装 **`max-preview`** 和 **`fg`** (如果你常搜文件)。这两个会让你的使用流感明显提升。如果你是 Git 重度用户，把 **`lazygit`** 集成配好会非常爽。
