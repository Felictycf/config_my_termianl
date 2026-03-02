local wezterm = require("wezterm")

-- 字体级联配置：优先使用 Hack Nerd Font Mono，然后回退到 Noto Color Emoji
return {
  font = wezterm.font_with_fallback({
    { family = "Hack Nerd Font Mono", scale = 1.0 },
    { family = "JetBrains Mono", scale = 1.0 },
    { family = "Noto Color Emoji", scale = 1.0 },
  }),
  font_size = 16,
  freetype_load_flags = "NO_HINTING", -- smoother font rendering
  -- 启用连字（可选）
  harfbuzz_features = {
    "calt=1",  -- 连字
    "clig=1",  -- 上下文连字
    "liga=1",  -- 标准连字
  },
}
