return {
	{
		"akinsho/toggleterm.nvim",
		version = "*",
		lazy = false,
		keys = {
			{ "<C-/>", desc = "Toggle Terminal" },
			{ "<leader>tf", desc = "Float Terminal" },
			{ "<leader>th", desc = "Horizontal Terminal" },
			{ "<leader>tv", desc = "Vertical Terminal" },
		},
		config = function()
			require("toggleterm").setup({
				size = 20,
				hide_numbers = true,
				shade_terminals = true,
				start_in_insert = true,
				insert_mappings = true,
				terminal_mappings = true,
				persist_size = true,
				persist_mode = true,
				direction = "float",
				close_on_exit = true,
				shell = vim.o.shell,
				float_opts = {
					border = "curved",
					winblend = 0,
				},
			})

			-- 快捷键设置
			vim.keymap.set({ "n", "t" }, "<C-/>", "<cmd>ToggleTerm<cr>", { desc = "Toggle Terminal" })
			vim.keymap.set("n", "<leader>tf", "<cmd>ToggleTerm direction=float<cr>", { desc = "Float Terminal" })
			vim.keymap.set("n", "<leader>th", "<cmd>ToggleTerm direction=horizontal<cr>", { desc = "Horizontal Terminal" })
			vim.keymap.set("n", "<leader>tv", "<cmd>ToggleTerm direction=vertical<cr>", { desc = "Vertical Terminal" })

			-- 终端内的快捷键
			vim.api.nvim_create_autocmd("TermOpen", {
				pattern = "term://*toggleterm#*",
				callback = function()
					vim.keymap.set("t", "<esc>", [[<C-\><C-n>]], { buffer = true })
					vim.keymap.set("t", "jk", [[<C-\><C-n>]], { buffer = true })
				end,
			})
		end,
	},
}
