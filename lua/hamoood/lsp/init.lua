local vim_capabilities = vim.lsp.protocol.make_client_capabilities()

vim_capabilities.textDocument.completion.completionItem.snippetSupport = true

-- Use an on_attach function to only map the following keys
-- after the language server attaches to the current buffer
local on_attach = function(client)
	client.resolved_capabilities.document_formatting = false
	client.resolved_capabilities.document_range_formatting = false
end

local lsp_flags = {
	debounce_text_changes = 50,
}

local capabilities = require("cmp_nvim_lsp").update_capabilities(vim.lsp.protocol.make_client_capabilities())

require("lspconfig")["sumneko_lua"].setup({
	on_attach = on_attach,
	flags = lsp_flags,
	capabilities = capabilities,
	settings = {
		Lua = {
			runtime = {
				-- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
				version = "LuaJIT",
				-- Setup your lua path
				path = vim.split(package.path, ";"),
			},
			diagnostics = {
				-- Get the language server to recognize the `vim` global
				globals = { "vim" },
			},
			workspace = {
				-- Make the server aware of Neovim runtime files
				library = {
					[vim.fn.expand("$VIMRUNTIME/lua")] = true,
					[vim.fn.expand("$VIMRUNTIME/lua/vim/lsp")] = true,
				},
			},
		},
	},
})
require("lspconfig").tsserver.setup({})

-- Lsp Utlities
require("hamoood.lsp.saga")
require("hamoood.lsp.trouble")
require("hamoood.lsp.cmp")
require("hamoood.lsp.null-ls")
