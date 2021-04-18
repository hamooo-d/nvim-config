local key_mapper = function(mode, key, result)
    vim.api.nvim_set_keymap(mode, key, result, {noremap = true, silent = true})
end

-- local key_mapper_expr = function(mode, key, result)
--     vim.api.nvim_set_keymap(mode, key, result, {noremap = true, silent = true, expr = true})
-- end

-- No arrows
key_mapper('', '<up>', '<nop>')
key_mapper('', '<down>', '<nop>')
key_mapper('', '<left>', '<nop>')
key_mapper('', '<right>', '<nop>')

-- Better buffer movements
key_mapper('n', '<Tab>', ':BufferLineCycleNext<CR>')
key_mapper('n', '<S-Tab>', ':BufferLineCyclePrev<CR>')

-- NoEscape
key_mapper('i', 'JK', '<ESC>')
key_mapper('i', 'jK', '<ESC>')
key_mapper('i', 'jk', '<ESC>')
key_mapper('i', 'kj', '<ESC>')
key_mapper('i', 'jj', '<ESC>')

-- LSP
key_mapper('n', 'gd', ':lua vim.lsp.buf.definition()<CR>')
key_mapper('n', 'gD', ':lua vim.lsp.buf.declaration()<CR>')
key_mapper('n', 'gi', ':lua vim.lsp.buf.implementation()<CR>')
key_mapper('n', 'gw', ':lua vim.lsp.buf.document_symbol()<CR>')
key_mapper('n', 'gW', ':lua vim.lsp.buf.workspace_symbol()<CR>')
key_mapper('n', 'gr', ':lua vim.lsp.buf.references()<CR>')
key_mapper('n', 'gt', ':lua vim.lsp.buf.type_definition()<CR>')
key_mapper('n', 'K', ':lua vim.lsp.buf.hover()<CR>')
key_mapper('n', '<C-k>', ':lua vim.lsp.buf.signature_help()<CR>')
-- key_mapper('n', '<leader>a', ':lua vim.lsp.buf.code_action()<CR>')
key_mapper('n', '<leader>a', ':Lspsaga code_action<CR>')
key_mapper('n', '<leader>rn', ':lua vim.lsp.buf.rename()<CR>')

-- Explorer
key_mapper('n', '<C-e>', ':NvimTreeToggle<CR>')

-- Better quiting and saving
key_mapper('n', '<C-s>', ':w<CR>')
key_mapper('n', '<C-q>', ':bd<CR>')
key_mapper('n', '<C-qq>', ':wq<CR>')

-- better indenting
key_mapper('v', '<', '<gv')
key_mapper('v', '>', '>gv')

-- Buffer movments
key_mapper('n', '<C-h>', '<C-w>h')
key_mapper('n', '<C-j>', '<C-w>j')
key_mapper('n', '<C-k>', '<C-w>k')
key_mapper('n', '<C-l>', '<C-w>l')

-- compe TODO: Figure why it doesn't work with vim api
-- key_mapper_expr('i', '<C-Space>', ':compe#complete()')
-- key_mapper_expr('i', '<CR>',      "compe#confirm('<CR>')")
-- key_mapper_expr('i', '<C-e>',     "comep#close('<C-e>')")
-- key_mapper_expr('i', '<C-f>',     "compe#scroll({ 'delta': +4  })")
-- key_mapper_expr('i', '<C-d>',     "compe#scroll({ 'delta': -4  })")
vim.cmd [[inoremap <silent><expr> <C-Space> compe#complete()]]
vim.cmd [[inoremap <silent><expr> <C-e> compe#complete('<C-e>')]]

-- Telescope
key_mapper("n", "<Leader>ff",':Telescope find_files<CR>')
key_mapper("n", "<Leader>fb",':Telescope buffers<CR>')
key_mapper("n", "<Leader>fo",':Telescope oldfiles<CR>')
key_mapper("n", "<Leader>fh",':Telescope help_tags<CR>')
key_mapper("n", "<Leader>fg",':Telescope<CR>git')
key_mapper("n", "<Leader>fp",[[<Cmd>lua require('telescope').extensions.media_files.media_files()<CR>]])
-- key_mapper("n", "<leader>fb",[[<Cmd>lua require('telescope.builtin').buffers()<CR>]])
-- key_mapper("n", "<leader>fh",[[<Cmd>lua require('telescope.builtin').help_tags()<CR>]])
-- key_mapper("n", "<leader>fo",[[<Cmd>lua require('telescope.builtin').oldfiles()<CR>]])
