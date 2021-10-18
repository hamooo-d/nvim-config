local make_config = require('lsp.default')
local config = make_config()


local on_attach = function(client, bufnr)
    client.resolved_capabilities.document_formatting = false

    local ts_utils = require("nvim-lsp-ts-utils")

    ts_utils.setup {
      import_all_timeout = 5000, -- ms
      import_all_priorities = {
          buffers = 4, -- loaded buffer names
          buffer_content = 3, -- loaded buffer content
          local_files = 2, -- git files or files with relative path markers
          same_file = 1, -- add to existing import statement
      },
      import_all_scan_buffers = 100,
      import_all_select_source = true,
    }

    ts_utils.setup_client(client)

    vim.api.nvim_buf_set_keymap(bufnr, "n", "<Leader>co", ":TSLspOrganize<CR>", {silent = true})
    vim.api.nvim_buf_set_keymap(bufnr, "n", "<Leader>cR", ":TSLspRenameFile<CR>", {silent = true})
    vim.api.nvim_buf_set_keymap(bufnr, "n", "<Leader>ci", ":TSLspImportAll<CR>", {silent = true})
  end


-- npm install -g typescript typescript-language-server
require'lspconfig'.tsserver.setup{
    on_attach = on_attach,
    capabilities = config.capabilities
}
