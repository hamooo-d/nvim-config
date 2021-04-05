local o = vim.o
local bo = vim.bo
local wo = vim.wo
local cmd = vim.cmd
local g = vim.g

o.termguicolors = true
o.syntax = 'on'
o.errorbells = false
o.smartcase = true
o.showmode = false
bo.swapfile = false
o.backup = false
o.undodir = vim.fn.stdpath('config') .. '/undodir'
o.undofile = true
o.incsearch = true
o.hidden = true
o.completeopt = 'menuone,noinsert,noselect'
bo.autoindent = true
bo.smartindent = true
o.tabstop = 2
o.softtabstop = 2
o.shiftwidth = 2
o.expandtab = true
wo.relativenumber = true
wo.signcolumn = 'yes'
wo.wrap = false
wo.cursorcolumn = false
wo.number = true
wo.numberwidth = 2
o.laststatus = 2

vim.o.clipboard = "unnamedplus" -- Copy paste between vim and everything else

g.airline_theme = 'onedark'
g.airline_powerline_fonts = 1
g['airline#extensions#tabline#enabled'] = 1
g['airline#extensions#tabline#buffer_min_count'] = 2
g['airline#extensions#tabline#formatter'] = 'unique_tail'
g.airline_section_y = ''
g.airline_skip_empty_sections = 1
g.mapleader = ' '
g.indent_blankline_buftype_exclude = {'terminal'}
g.indent_blankline_filetype_exclude = {
    'help', 'startify', 'dashboard', 'packer', 'neogitstatus'
}
g.indent_blankline_char = '▏'
g.indent_blankline_use_treesitter = true
g.indent_blankline_show_first_indent_level = false
g.indent_blankline_show_trailing_blankline_indent = false
g.indent_blankline_show_current_context = false
g.rainbow_active = 0
g.indent_blankline_context_patterns = {
    'class', 'return', 'function', 'method', '^if', '^while', 'jsx_element',
    '^for', '^object', '^table', 'block', 'arguments', 'if_statement',
    'else_clause', 'jsx_element', 'jsx_self_closing_element', 'try_statement',
    'catch_clause', 'import_statement', 'operation_type'
}
cmd("hi IndentBlanklineChar guifg=#373b43")

g['test#strategy'] = 'neovim'
g['test#neovim#term_position'] = 'vertical'
g['test#javascript#jest#options'] = '--watch'

-- Floatterm
g.floaterm_keymap_new = '<F7>'
g.floaterm_keymap_prev = '<F8>'
g.floaterm_keymap_next = '<F9>'
g.floaterm_keymap_toggle = '<C-t>'
cmd [[set shortmess+=c]]

-- highlights
cmd "colorscheme onedark"
cmd "syntax enable"
cmd "syntax on"

cmd("hi LineNr guibg=NONE")
cmd("hi SignColumn guibg=NONE")
cmd("hi VertSplit guibg=NONE")
cmd("hi EndOfBuffer guifg=#282c34")

cmd("hi TelescopeBorder   guifg=#3e4451")
cmd("hi TelescopePromptBorder   guifg=#3e4451")
cmd("hi TelescopeResultsBorder  guifg=#3e4451")
cmd("hi TelescopePreviewBorder  guifg=#525865")
cmd("hi PmenuSel  guibg=#98c379")
cmd("hi GitSignsAdd guibg=none guifg=#97C378")
cmd("hi GitSignsChange guibg=none guifg=#FDE49C")
cmd("hi GitSignsDelete guibg=none guifg=#e6293f")

-- tree folder name , icon color
cmd("hi NvimTreeFolderIcon guifg = #61afef")
cmd("hi NvimTreeFolderName guifg = #61afef")
cmd("hi NvimTreeIndentMarker guifg= none")

cmd("hi Normal guibg=NONE ctermbg=NONE")

require("nvim-autopairs").setup()

-- Auto Prettier formatting
-- TODO: fix autoformatting
cmd [[autocmd BufWritePre *.tsx  :PrettierAsync]]
cmd [[autocmd BufWritePre *.ts   :PrettierAsync]]
cmd [[autocmd BufWritePre *.jsx  :PrettierAsync]]
cmd [[autocmd BufWritePre *.css  :PrettierAsync]]
cmd [[autocmd BufWritePre *.scss :PrettierAsync]]
cmd [[ autocmd BufWrite *.lua call LuaFormat()]]

vim.api.nvim_exec([[
augroup NvimTree 
  au!
  au FileType NvimTree setlocal winhighlight=Normal:CustomExplorerBg
 augroup END
 ]], false)
