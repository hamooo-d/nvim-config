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
Plug 'folke/tokyonight.nvim', { 'branch': 'main' }
Plug 'navarasu/onedark.nvim'


" Icons
Plug 'kyazdani42/nvim-web-devicons'
Plug 'ryanoasis/vim-devicons'
Plug 'yamatsum/nvim-nonicons'

" Bars
Plug 'akinsho/bufferline.nvim'
Plug 'glepnir/galaxyline.nvim'
Plug 'shadmansaleh/lualine.nvim'
Plug 'famiu/bufdelete.nvim'

" Git
Plug 'lewis6991/gitsigns.nvim'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'

" Lsp
Plug 'neovim/nvim-lspconfig'
Plug 'kabouzeid/nvim-lspinstall'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-vsnip'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-emoji'
Plug 'hrsh7th/nvim-cmp'
" Plug 'glepnir/lspsaga.nvim'
Plug 'tami5/lspsaga.nvim', { 'branch': 'nvim51' }
Plug 'onsails/lspkind-nvim'
Plug 'folke/lsp-trouble.nvim'
Plug 'ray-x/lsp_signature.nvim'
Plug 'jose-elias-alvarez/nvim-lsp-ts-utils'
Plug 'nvim-lua/lsp-status.nvim'

" Startscreen
Plug 'mhinz/vim-startify'

" Syntax and langauge support
Plug 'hrsh7th/vim-vsnip-integ'
Plug 'hrsh7th/vim-vsnip'
" Plug 'HerringtonDarkholme/yats.vim'
" Plug 'maxmellon/vim-jsx-pretty'

" Utilies
Plug 'tpope/vim-commentary'
Plug 'alvan/vim-closetag'
Plug 'jiangmiao/auto-pairs'
Plug 'voldikss/vim-floaterm'
Plug 'kevinhwang91/rnvimr'
Plug 'airblade/vim-rooter'
Plug 'easymotion/vim-easymotion'
Plug 'lukas-reineke/indent-blankline.nvim'
Plug 'tpope/vim-surround'

call plug#end()
