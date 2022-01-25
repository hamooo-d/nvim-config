local make_config = require("lsp.default")
local config = make_config()
require("lspconfig").html.setup(config)

local lspconfig = require("lspconfig")
local configs = require("lspconfig/configs")

configs.emmet_ls = {
	default_config = {
		cmd = { "emmet_ls", "--stdio" },
		filetypes = {
			"html",
			"css",
			"scss",
			"javascript",
			"javascriptreact",
			"typescript",
			"typescriptreact",
			"haml",
			"xml",
			"xsl",
			"pug",
			"slim",
			"sass",
			"stylus",
			"less",
			"sss",
		},
		root_dir = function()
			return vim.loop.cwd()
		end,
		settings = {},
	},
}

lspconfig.emmet_ls.setup({ capabilities = config.capabilities })
