local make_config = require("lsp.default")
local capabilities = make_config().capabilities

local connections = {
	{
		driver = "postgresql",
		dataSourceName = "host=127.0.0.1 port=5432 user=ahmed password=1798 dbname=test sslmode=disable",
	},
}

local on_attach = function(client, bufnr)
	require("sqls").on_attach(client, bufnr)
end

require("lspconfig").sqls.setup({
	capabilities = capabilities,
	on_attach = on_attach,
	settings = {
		sqls = {
			connections = connections,
		},
	},
})
