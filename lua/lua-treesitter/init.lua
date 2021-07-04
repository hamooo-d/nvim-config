local configs = require 'nvim-treesitter.configs'

configs.setup {
    autotag = {enable = true},
    ensure_installed = "maintained",
    highlight = {enable = true}
}
