local wezterm = require("wezterm")
local palette = require("config.palette")

local M = {}

function prefix_tab_title(tab_title, tab_info)
  local tab_index = tab_info.tab_index + 1
  return '[' .. tab_index .. '] ' .. tab_title
end

function tab_title(tab_info)
  local title = tab_info.tab_title
  -- if the tab title is explicitly set, take that
  if title and #title > 0 then
    return title
  end

  local pane = tab_info.active_pane
  -- Try to use current_working_dir first (works better with tmux)
  local cwd = pane.current_working_dir
  if cwd then
    local cwd_uri = cwd
    if type(cwd) == "userdata" then
      cwd_uri = cwd.file_path
    end
    if cwd_uri then
      -- Extract the last part of the path (folder name)
      local folder = cwd_uri:match("([^/]+)/?$")
      if folder and #folder > 0 then
        return folder
      end
    end
  end

  -- Fallback to pane title
  return pane.title
end

M.setup = function()
  wezterm.on("format-tab-title", function(tab, tabs, panes, config, hover, max_width)
    local background = palette.mantle
    local foreground = palette.subtext0

    if tab.is_active then
      background = palette.base
      foreground = palette.blue
    elseif hover then
      background = palette.surface0
      foreground = palette.text
    end

    local title = prefix_tab_title(tab_title(tab), tab)

    -- ensure that the titles fit in the available space,
    -- and that we have room for the edges.
    title = wezterm.truncate_right(title, max_width - 2)

    return {
      { Background = { Color = background } },
      { Foreground = { Color = foreground } },
      { Text = ' ' },
      { Text = title },
      { Text = ' ' },
    }
  end)
end

return M
