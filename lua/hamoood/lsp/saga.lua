require("hamoood.utils")
local saga = require("lspsaga")
local opts = { noremap = true, silent = true }

saga.init_lsp_saga()

-- code format
map({ "n", "v" }, "<leader>cf", vim.lsp.buf.formatting, opts)

-- use <C-t> to jump back
map("n", "gh", "<cmd>Lspsaga lsp_finder<CR>", opts)
-- Code action
map({ "n", "v" }, "<leader>ca", "<cmd>Lspsaga code_action<CR>", opts)

-- Rename
map("n", "<leader>cr", "<cmd>Lspsaga rename<CR>", opts)

-- Peek Definition
-- you can edit the definition file in this flaotwindow
-- also support open/vsplit/etc operation check definition_action_keys
-- support tagstack C-t jump back
map("n", "gd", "<cmd>Lspsaga peek_definition<CR>", opts)

-- Show line diagnostics
map("n", "<leader>cd", "<cmd>Lspsaga show_line_diagnostics<CR>", opts)

-- Diagnsotic jump can use `<c-o>` to jump back
map("n", "[e", "<cmd>Lspsaga diagnostic_jump_prev<CR>", opts)
map("n", "]e", "<cmd>Lspsaga diagnostic_jump_next<CR>", opts)

-- Only jump to error
map("n", "[E", function()
	require("lspsaga.diagnostic").goto_prev({ severity = vim.diagnostic.severity.ERROR })
end, opts)
map("n", "]E", function()
	require("lspsaga.diagnostic").goto_next({ severity = vim.diagnostic.severity.ERROR })
end, opts)

-- Outline
map("n", "<leader>o", "<cmd>LSoutlineToggle<CR>", opts)

-- Hover Doc
map("n", "K", "<cmd>Lspsaga hover_doc<CR>", opts)

-- Float terminal
map("n", "<A-d>", "<cmd>Lspsaga open_floaterm<CR>", opts)

-- close floaterm
map("t", "<A-d>", [[<C-\><C-n><cmd>Lspsaga close_floaterm<CR>]], opts)
