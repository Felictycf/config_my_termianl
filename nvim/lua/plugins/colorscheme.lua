return {
	{
		"catppuccin/nvim",
		name = "catppuccin",
		lazy = false,
		priority = 1000,
		opts = {
			flavour = "mocha",
			transparent_background = true,
		},
		config = function(_, opts)
			require("catppuccin").setup(opts)

			-- LazyVim expects `require(...).get()`, but newer catppuccin exposes `get_theme()`.
			local ok, bufferline = pcall(require, "catppuccin.groups.integrations.bufferline")
			if ok and bufferline.get == nil and type(bufferline.get_theme) == "function" then
				bufferline.get = bufferline.get_theme
			end
		end,
	},
}
