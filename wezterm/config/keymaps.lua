local wezterm = require("wezterm")
local act = wezterm.action

return {
	keys = {
		{
			-- 绑定到 Cmd + e (macOS)
			key = "e",
			mods = "CMD",
			-- 这就是你寻找的 "Window | Select Tab: Navigate tabs" 对应的 Action
			action = act.ShowTabNavigator,
		},
		{
			key = "t",
			mods = "ALT",
			action = wezterm.action.SplitVertical({ domain = "CurrentPaneDomain" }),
		},
		{
			key = "v",
			mods = "ALT",
			action = wezterm.action.SplitHorizontal({ domain = "CurrentPaneDomain" }),
		},
		{
			key = "w",
			mods = "CMD",
			action = wezterm.action.CloseCurrentPane({ confirm = true }),
		},

		-- Navigation between panes
		{
			key = "h",
			mods = "CTRL|SHIFT",
			action = wezterm.action.ActivatePaneDirection("Left"),
		},
		{
			key = "l",
			mods = "CTRL|SHIFT",
			action = wezterm.action.ActivatePaneDirection("Right"),
		},
		{
			key = "k",
			mods = "CTRL|SHIFT",
			action = wezterm.action.ActivatePaneDirection("Up"),
		},
		{
			key = "j",
			mods = "CTRL|SHIFT",
			action = wezterm.action.ActivatePaneDirection("Down"),
		},

		-- Rename current tab with Chinese input support (uses macOS dialog)
		{
			key = "S",
			mods = "CTRL|SHIFT",
			action = wezterm.action.EmitEvent("rename-tab-with-dialog"),
		},
	},
	mouse_bindings = {
		-- Ctrl+Click on tab to rename
		{
			event = { Up = { streak = 1, button = "Left" } },
			mods = "CTRL",
			mouse_reporting = true,
			action = wezterm.action.EmitEvent("rename-tab-with-dialog"),
		},
	},
}
