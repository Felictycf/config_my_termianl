local wezterm = require 'wezterm'
local palette = require 'config.palette'

local M = {}

function get_battery_percentage(battery)
	local percentage = battery.state_of_charge * 100
	local is_charging = false

	if battery.state == 'Charging' then
		is_charging = true
	end

	local icon = wezterm.nerdfonts.md_battery_high

	if not is_charging and percentage < 30 then
		icon = wezterm.nerdfonts.md_battery_low
	elseif not is_charging and percentage < 80 then
		icon = wezterm.nerdfonts.md_battery_medium
	elseif is_charging and percentage >= 80 then
		icon = wezterm.nerdfonts.md_battery_charging_high
	elseif is_charging and percentage < 30 then
		icon = wezterm.nerdfonts.md_battery_charging_low
	elseif is_charging and percentage < 80 then
		icon = wezterm.nerdfonts.md_battery_charging_medium
	end

	return string.format("%s %.0f%%", icon, percentage)
end

function get_battery_bg_color(battery)
	local percentage = battery.state_of_charge * 100
	if battery.state == 'Charging' or battery.state == 'Full' then
		return palette.green
	elseif percentage < 30 then
		return palette.red
	elseif percentage < 50 then
		return palette.peach
	elseif percentage < 70 then
		return palette.yellow
	else
		return palette.green
	end
end

M.setup = function()
  wezterm.on("update-right-status", function(window, pane)
    local date = wezterm.strftime(" %I:%M %p ")
    local time = wezterm.strftime(" %B %-d ")

    local elements = {
      {Foreground={Color=palette.blue}},
      {Background={Color=palette.mantle}},
      {Text=""},
      {Foreground={Color=palette.crust}},
      {Background={Color=palette.blue}},
      {Text=time},

      {Foreground={Color=palette.mauve}},
      {Background={Color=palette.blue}},
      {Text=""},
      {Foreground={Color=palette.crust}},
      {Background={Color=palette.mauve}},
      {Text=date},
    }

    -- Only add battery info if battery is available
    local batteries = wezterm.battery_info()
    if batteries and #batteries > 0 then
      local battery = batteries[1]
      local battery_info = " " .. get_battery_percentage(battery) .. " "
      local battery_bg = get_battery_bg_color(battery)

      table.insert(elements, {Foreground={Color=battery_bg}})
      table.insert(elements, {Background={Color=palette.mauve}})
      table.insert(elements, {Text=""})
      table.insert(elements, {Foreground={Color=palette.crust}})
      table.insert(elements, {Background={Color=battery_bg}})
      table.insert(elements, {Text=battery_info})
    end

    local status = wezterm.format(elements)
    window:set_right_status(status)
  end)
end

return M
