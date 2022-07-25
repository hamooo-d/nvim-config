require("plugins/treesitter")
require("plugins/startup")
require("plugins/lualine")
require("plugins/bufferline")
require("plugins/telescope")
require("plugins/gitsigns")
require("plugins/nvimtree")
require("plugins/toggleterm")
require("plugins/onedark")

require("colorizer").setup()
require("hop").setup()
require("go").setup()

vim.api.nvim_exec([[ autocmd BufWritePre *.go :silent! lua require('go.format').goimport() ]], false)

require("lsp/cmp")
require("plugins/pairs")
require("lsp/docker")
require("lsp/null-ls")
require("lsp/tsserver")
require("lsp/graphql")
require("lsp/go")
require("lsp/c")
require("lsp/json")
require("lsp/yaml")
require("lsp/html")
require("lsp/css")
require("lsp/tailwindcss")
require("lsp/lua")
require("lsp/eslint")
require("lsp/sql")
require("lsp/prisma")

vim.api.nvim_create_autocmd("BufEnter", {
	command = "if winnr('$') == 1 && bufname() == 'NvimTree_' . tabpagenr() | quit | endif",
	nested = true,
})

vim.api.nvim_create_autocmd("BufEnter", {
	nested = true,
	callback = function()
		if #vim.api.nvim_list_wins() == 1 and vim.api.nvim_buf_get_name(0):match("NvimTree_") ~= nil then
			vim.cmd("quit")
		end
	end,
})
