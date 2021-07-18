call plug#begin('~/.vim/plugged')

" Highlights
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " We recommend updating the parsers on update
Plug 'sheerun/vim-polyglot'
Plug 'norcalli/nvim-colorizer.lua'

" Telescope
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

" Explorer
Plug 'kyazdani42/nvim-tree.lua'

" Colorscheme
Plug 'gruvbox-community/gruvbox'
Plug 'navarasu/onedark.nvim'
Plug 'tiagovla/tokyodark.nvim'

" Icons
Plug 'kyazdani42/nvim-web-devicons'
Plug 'ryanoasis/vim-devicons'

" Bars
Plug 'romgrk/barbar.nvim'
Plug 'glepnir/galaxyline.nvim'

" Git
Plug 'lewis6991/gitsigns.nvim'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'

" Lsp
Plug 'neovim/nvim-lspconfig'
Plug 'kabouzeid/nvim-lspinstall'
Plug 'hrsh7th/nvim-compe'
Plug 'glepnir/lspsaga.nvim'
Plug 'onsails/lspkind-nvim'
Plug 'folke/lsp-trouble.nvim'
Plug 'ray-x/lsp_signature.nvim'
Plug 'jose-elias-alvarez/nvim-lsp-ts-utils'

" Syntax and langauge support
Plug 'mboughaba/i3config.vim'
Plug 'pantharshit00/vim-prisma'
Plug 'ekalinin/Dockerfile.vim'

" Utilies
Plug 'terrortylor/nvim-comment'
Plug 'windwp/nvim-ts-autotag'
Plug 'windwp/nvim-autopairs'
Plug 'voldikss/vim-floaterm'
Plug 'kevinhwang91/rnvimr'


call plug#end()
