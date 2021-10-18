local make_config = function()
    vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
        vim.lsp.diagnostic.on_publish_diagnostics, {
            underline = true,
            virtual_text = {
            spacing = 5,
            severity_limit = 'Warning',
            },
            signs = true,
            update_in_insert = true,
        }
    )
    local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())
    capabilities.textDocument.completion.completionItem.snippetSupport = true

    return {
        capabilities = capabilities
    }
    end


return make_config
