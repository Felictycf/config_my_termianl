local wezterm = require 'wezterm'
local palette = require 'config.palette'

local color_scheme = 'Catppuccin Mocha'

local config = {
  color_scheme = color_scheme,

  window_decorations = 'RESIZE',
  use_fancy_tab_bar = false,

  show_tab_index_in_tab_bar = false,
  switch_to_last_active_tab_when_closing_tab = true,

  colors = {
    tab_bar = {
      background = palette.mantle,
      new_tab = { bg_color = palette.mantle, fg_color = palette.subtext0 },
      new_tab_hover = { bg_color = palette.surface0, fg_color = palette.text },
    },
  },
}

local builtin_schemes = wezterm.color.get_builtin_schemes()
if not builtin_schemes[color_scheme] then
  config.color_schemes = {
    [color_scheme] = {
      foreground = '#cdd6f4',
      background = '#1e1e2e',

      cursor_bg = '#f5e0dc',
      cursor_fg = '#1e1e2e',
      cursor_border = '#f5e0dc',

      selection_fg = '#cdd6f4',
      selection_bg = '#585b70',

      scrollbar_thumb = '#585b70',
      split = '#6c7086',

      ansi = {
        '#45475a',
        '#f38ba8',
        '#a6e3a1',
        '#f9e2af',
        '#89b4fa',
        '#f5c2e7',
        '#94e2d5',
        '#bac2de',
      },
      brights = {
        '#585b70',
        '#f38ba8',
        '#a6e3a1',
        '#f9e2af',
        '#89b4fa',
        '#f5c2e7',
        '#94e2d5',
        '#a6adc8',
      },
    },
  }
end

return config
