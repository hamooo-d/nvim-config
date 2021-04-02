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

g.airline_theme='base16'
g.airline_powerline_fonts = 1
g['airline#extensions#tabline#enabled'] = 1
g['airline#extensions#tabline#buffer_min_count'] = 2
g['airline#extensions#tabline#formatter'] = 'unique_tail'
g.airline_section_y=''
g.airline_skip_empty_sections = 1
g.mapleader = ' '
g.indentLine_enabled = 0
-- g.indent_blankline_char = "▏"
-- cmd("hi IndentBlanklineChar guifg=#373b43")
-- g.indent_blankline_filetype_exclude = {"help", "terminal"}
-- g.indent_blankline_show_trailing_blankline_indent = false
-- g.indent_blankline_show_first_indent_level = false

g['test#strategy'] = 'neovim'
g['test#neovim#term_position'] = 'vertical'
g['test#javascript#jest#options'] = '--watch'

-- Floatterm
g.floaterm_keymap_new    = '<F7>'
g.floaterm_keymap_prev   = '<F8>'
g.floaterm_keymap_next   = '<F9>'
g.floaterm_keymap_toggle = '<F12>'
cmd [[set shortmess+=c]]


-- highlights
cmd [[let base16colorspace=256]]
cmd "colorscheme base16-material"
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
cmd("hi GitSignsAdd guibg=none guifg=#0ec933")
cmd("hi GitSignsChange guibg=none guifg=#dce629")
cmd("hi GitSignsDelete guibg=none guifg=#e6293f")

-- tree folder name , icon color
cmd("hi NvimTreeFolderIcon guifg = #61afef")
cmd("hi NvimTreeFolderName guifg = #61afef")
cmd("hi NvimTreeIndentMarker guifg= none")

cmd("hi Normal guibg=NONE ctermbg=NONE")

require("nvim-autopairs").setup()

-- nvimTree bg color
cmd("hi CustomExplorerBg guibg=#242830")

vim.api.nvim_exec(
    [[
augroup NvimTree 
  au!
  au FileType NvimTree setlocal winhighlight=Normal:CustomExplorerBg
 augroup END
 ]],
    false
)
