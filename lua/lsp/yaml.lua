local make_config = require('lsp.default')
local config = make_config()

require'lspconfig'.yamlls.setup(config)
