local make_config = require('lsp.default')
local config = make_config()

config.filetypes = {"json", "jsonc"}

require'lspconfig'.jsonls.setup(config)

