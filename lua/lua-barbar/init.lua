local key_mapper = function(mode, key, result)
    vim.api.nvim_set_keymap(mode, key, result, {noremap = true, silent = true})
end

key_mapper('n', '<Tab>', ':BufferNext<CR>')
key_mapper('n', '<S-Tab>', ':BufferPrevious<CR>')
key_mapper('n', '<C-q>', ':BufferClose<CR>')

