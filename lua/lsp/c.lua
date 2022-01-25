local make_config = require("lsp.default")
local util = require("lspconfig.util")
local config = make_config()

config.root_dir = util.root_pattern("*.c", ".git")

require("lspconfig").ccls.setup(config)
