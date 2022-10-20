local opt = vim.opt
local cmd = vim.cmd
local g = vim.g

opt.number = true
opt.relativenumber = true

opt.tabstop = 4
opt.softtabstop = 4
opt.shiftwidth = 4
opt.expandtab = true

opt.smartindent = true
opt.wrap = false

opt.signcolumn = "yes"

opt.swapfile = false
opt.backup = false
opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
opt.undofile = true

opt.hlsearch = false
opt.incsearch = true

opt.termguicolors = true

opt.scrolloff = 8

opt.isfname:append("@-@")

opt.cmdheight = 1

opt.updatetime = 50

opt.shortmess:append("c")

opt.clipboard = "unnamedplus"

g.mapleader = " "

opt.formatoptions = "jql"

cmd([[colorscheme tokyonight-night]])