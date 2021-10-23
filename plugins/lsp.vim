let mapleader=" "
let g:mapleader=" "

" Saga
nnoremap <silent> gd <cmd>lua vim.lsp.buf.definition()<CR>
nnoremap <silent> gD <cmd>lua require'lspsaga.provider'.preview_definition()<CR>
nnoremap <silent> gr <cmd>lua require'lspsaga.provider'.lsp_finder()<CR>
nmap <silent> <C-Space> <cmd>lua require('lspsaga.codeaction').code_action()<CR>
nnoremap <silent> <Leader>ca <cmd>lua require('lspsaga.codeaction').code_action()<CR>
vnoremap <silent> <Leader>ca <cmd>'<,'>lua require('lspsaga.codeaction').range_code_action()<CR>
nnoremap <silent> <Leader>cr <cmd>lua require('lspsaga.rename').rename()<CR>
nnoremap <silent> <Leader>f <cmd>lua vim.lsp.buf.formatting()<CR>
vnoremap <silent> <Leader>cf <cmd>'<.'>lua vim.lsp.buf.range_formatting()<CR>
nnoremap <silent> K <cmd>lua require('lspsaga.hover').render_hover_doc()<CR>
nnoremap <silent> <C-k> <cmd>lua require('lspsaga.signaturehelp').signature_help()<CR>
nnoremap <silent> <leader>cE <cmd>lua require'lspsaga.diagnostic'.lsp_jump_diagnostic_prev()<CR>
nnoremap <silent> <leader>ce <cmd>lua require'lspsaga.diagnostic'.lsp_jump_diagnostic_next()<CR>
nnoremap <silent> <C-f> <cmd>lua require('lspsaga.action').smart_scroll_with_saga(1)<CR>
nnoremap <silent> <C-b> <cmd>lua require('lspsaga.action').smart_scroll_with_saga(-1)<CR>
nnoremap <silent> <leader>cl <cmd>lua require'lspsaga.diagnostic'.show_line_diagnostics()<CR>

" Auto-format
autocmd BufWritePre *.js,*.ts,*.jsx,*.tsx,*.graphql,*.json,*.md,*.mdx,*.svelte,*.yml,*yaml,*.lua,*.go lua vim.lsp.buf.formatting_seq_sync()
autocmd BufWritePre *.tsx :TSLspOrganizeSync
autocmd BufWritePre *.go lua GoImports(1000)
