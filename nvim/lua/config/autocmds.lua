-- Turn off paste mode when leaving insert
vim.api.nvim_create_autocmd("InsertLeave", {
	pattern = "*",
	command = "set nopaste",
})

-- Disable the concealing in some file formats
-- The default conceallevel is 3 in LazyVim
vim.api.nvim_create_autocmd("FileType", {
	pattern = { "json", "jsonc", "markdown" },
	callback = function()
		vim.opt.conceallevel = 0
	end,
})

-- Disable spell check for all file types (fixes wavy lines when typing Chinese)
vim.api.nvim_create_autocmd({ "BufEnter", "BufWinEnter", "FileType" }, {
	pattern = "*",
	callback = function()
		vim.opt_local.spell = false
	end,
})
