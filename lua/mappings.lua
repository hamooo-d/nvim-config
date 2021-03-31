local key_mapper = function(mode, key, result)
    vim.api.nvim_set_keymap(mode, key, result, {noremap = true, silent = true})
end

-- No arrows
key_mapper('', '<up>', '<nop>')
key_mapper('', '<down>', '<nop>')
key_mapper('', '<left>', '<nop>')
key_mapper('', '<right>', '<nop>')

-- Better buffer movements
key_mapper('n', '<Tab>', ':bnext<CR>')
key_mapper('n', '<S-Tab>', ':bprevious<CR>')

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
key_mapper('n', '<leader>a', ':lua vim.lsp.buf.code_action()<CR>')
key_mapper('n', '<leader>rn', ':lua vim.lsp.buf.rename()<CR>')

-- Explorer
key_mapper('n', '<C-e>', ':NvimTreeToggle<CR>')

-- Better quiting and saving
key_mapper('n', '<C-s>', ':w<CR>')
key_mapper('n', '<C-q>', ':q<CR>')
key_mapper('n', '<C-qq>', ':wq<CR>')

-- better indenting
key_mapper('v', '<', '<gv')
key_mapper('v', '>', '>gv')

-- Buffer movments
vim.api.nvim_set_keymap('n', '<C-h>', '<C-w>h', {silent = true})
vim.api.nvim_set_keymap('n', '<C-j>', '<C-w>j', {silent = true})
vim.api.nvim_set_keymap('n', '<C-k>', '<C-w>k', {silent = true})
vim.api.nvim_set_keymap('n', '<C-l>', '<C-w>l', {silent = true})

-- compe
vim.cmd[[inoremap <silent><expr> <C-Space> compe#complete()]]
--vim.cmd[[inoremap <silent><expr> <CR>      compe#confirm('<CR>')]]
vim.cmd[[inoremap <silent><expr> <C-e>     compe#close('<C-e>')]]
vim.cmd[[inoremap <silent><expr> <C-f>     compe#scroll({ 'delta': +4  })]]
vim.cmd[[inoremap <silent><expr> <C-d>     compe#scroll({ 'delta': -4  })]]
