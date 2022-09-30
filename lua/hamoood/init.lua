require("hamoood.packer")
require("hamoood.editor")
require("hamoood.tokyonight")
require("hamoood.treesitter")
require("hamoood.lualine")
require("hamoood.git")

require'colorizer'.setup()
require'nvim-web-devicons'.setup()

vim.api.nvim_create_autocmd('TextYankPost', {
    group = yank_group,
    pattern = '*',
    callback = function()
        vim.highlight.on_yank({
            higroup = 'IncSearch',
            timeout = 40,
        })
    end,
})

vim.g.netrw_browse_split = 0
vim.g.netrw_banner = 0
vim.g.netrw_winsize = 25

