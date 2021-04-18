local configs = require 'nvim-treesitter.configs'
local filetypes = {
  'html', 'javascript', 'javascriptreact', 'typescriptreact', 'svelte', 'vue'
}

configs.setup {
    rainbow = {enable = false, filetypes = filetypes},
    autotag = {enable = true},
    ensure_installed = "maintained",
    highlight = {enable = true, use_languagetree = true}
}
