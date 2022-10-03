require("hamoood.packer")
require("hamoood.editor")
require("hamoood.treesitter")
require("hamoood.lualine")
require("hamoood.git")
require("hamoood.lsp")
require("hamoood.tokyonight")

require("colorizer").setup()
require("nvim-web-devicons").setup()
require("nvim-autopairs").setup({})

require("better_escape").setup({
	mapping = { "jk" }, -- a table with mappings to use
	timeout = vim.o.timeoutlen, -- the time in which the keys must be hit in ms. Use option timeoutlen by default
	clear_empty_lines = false, -- clear line after escaping if there is only whitespace
	keys = "<Esc>",
})

local yank_group = vim.api.nvim_create_augroup("HighlightYank", {})

vim.api.nvim_create_autocmd("TextYankPost", {
	group = yank_group,
	pattern = "*",
	callback = function()
		vim.highlight.on_yank({
			higroup = "IncSearch",
			timeout = 50,
		})
	end,
})

local g = vim.g

g.netrw_browse_split = 0
g.netrw_banner = 0
g.netrw_winsize = 25
