let mapleader=" "
let g:mapleader=" "

" Saga
nnoremap <silent> gd <cmd>lua vim.lsp.buf.definition()<CR>
nnoremap <silent> gD <cmd>lua require'lspsaga.provider'.preview_definition()<CR>
nnoremap <silent> gr <cmd>lua require'lspsaga.provider'.lsp_finder()<CR>
nnoremap <silent> <Leader>ca <cmd>Lspsaga code_action<CR>
vnoremap <silent> <Leader>ca <cmd>'<,'>lua require('lspsaga.codeaction').range_code_action()<CR>
nnoremap <silent> <Leader>cr <cmd>Lspsaga rename<CR>
nnoremap <silent> <Leader>f <cmd>lua vim.lsp.buf.formatting()<CR>
vnoremap <silent> <Leader>cf <cmd>'<.'>lua vim.lsp.buf.range_formatting()<CR>
nnoremap <silent> K <cmd>Lspsaga hover_doc<CR>
nnoremap <silent> <C-k> <cmd>lua require('lspsaga.signaturehelp').signature_help()<CR>
nnoremap <silent> <leader>cE <cmd>Lspsaga diagnostic_jump_prev<CR>
nnoremap <silent> <leader>ce <cmd>Lspsaga diagnostic_jump_next<CR>
nnoremap <silent> <C-f> <cmd>lua require('lspsaga.action').smart_scroll_with_saga(1)<CR>
nnoremap <silent> <C-b> <cmd>lua require('lspsaga.action').smart_scroll_with_saga(-1)<CR>
nnoremap <silent> <leader>cl <cmd>lua require'lspsaga.diagnostic'.show_line_diagnostics()<CR>

map(0, "n", "gr", "<cmd>Lspsaga rename<cr>", {silent = true, noremap = true})
map(0, "n", "gx", "<cmd>Lspsaga code_action<cr>", {silent = true, noremap = true})
map(0, "x", "gx", ":<c-u>Lspsaga range_code_action<cr>", {silent = true, noremap = true})
map(0, "n", "K",  "<cmd>Lspsaga hover_doc<cr>", {silent = true, noremap = true})
map(0, "n", "go", "<cmd>Lspsaga show_line_diagnostics<cr>", {silent = true, noremap = true})
map(0, "n", "gj", "<cmd>Lspsaga diagnostic_jump_next<cr>", {silent = true, noremap = true})
map(0, "n", "gk", "<cmd>Lspsaga diagnostic_jump_prev<cr>", {silent = true, noremap = true})
map(0, "n", "<C-u>", "<cmd>lua require('lspsaga.action').smart_scroll_with_saga(-1)<cr>")
map(0, "n", "<C-d>", "<cmd>lua require('lspsaga.action').smart_scroll_with_saga(1)<cr>")

" Auto-format
<<<<<<< HEAD
autocmd BufWritePre *.js,*.ts,*.jsx,*.tsx,*.graphql,*.json,*.md,*.mdx,*.svelte,*.yml,*yaml,*.lua lua vim.lsp.buf.formatting_seq_sync()
" autocmd BufWritePre *.tsx :TSLspOrganizeSync
" autocmd BufWritePre *.go :silent! lua require('go.format').gofmt()
" ALE
let g:ale_linters = {
  \   'javascript': ['eslint'],
  \   'typescript': ['eslint'],
  \   'typescriptreact': ['eslint'],
  \}

" Copilot

imap <silent><script><expr> <C-x> copilot#Accept("\<CR>")

let g:copilot_no_tab_map = v:true
=======
autocmd BufWritePre *.js,*.ts,*.jsx,*.tsx,*.graphql,*.json,*.md,*.mdx,*.svelte,*.yml,*.yaml,*.lua,*.go,*.py lua vim.lsp.buf.formatting_seq_sync()
autocmd BufWritePre *.tsx :TSLspOrganizeSync
autocmd BufWritePre *.go lua GoImports(1000)

>>>>>>> a3b3df1511c340501021210591e15fb0c7c087ef
