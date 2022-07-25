call plug#begin('~/.vim/plugged')

" Fast startup
Plug 'lewis6991/impatient.nvim'

" Highlights
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " We recommend updating the parsers on update
Plug 'sheerun/vim-polyglot'
Plug 'norcalli/nvim-colorizer.lua'

" Telescope
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-media-files.nvim'

" Explorer
Plug 'kyazdani42/nvim-tree.lua'
" Plug 'preservim/nerdtree' 
" Plug 'Xuyuanp/nerdtree-git-plugin'

" Colorscheme
Plug 'folke/tokyonight.nvim', { 'branch': 'main' }
Plug 'navarasu/onedark.nvim'


" Icons
Plug 'kyazdani42/nvim-web-devicons'
Plug 'ryanoasis/vim-devicons'
Plug 'yamatsum/nvim-nonicons'

" Bars
Plug 'akinsho/bufferline.nvim'
Plug 'windwp/windline.nvim'
Plug 'nvim-lualine/lualine.nvim'
Plug 'famiu/bufdelete.nvim'

" Git
Plug 'lewis6991/gitsigns.nvim'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'

" Lsp
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'
Plug 'tami5/lspsaga.nvim'
Plug 'onsails/lspkind-nvim'
Plug 'folke/lsp-trouble.nvim'
Plug 'ray-x/lsp_signature.nvim'
Plug 'jose-elias-alvarez/nvim-lsp-ts-utils'
Plug 'nvim-lua/lsp-status.nvim'
Plug 'jose-elias-alvarez/null-ls.nvim'
Plug 'nanotee/sqls.nvim'
Plug 'github/copilot.vim'

" Startscreen
Plug 'startup-nvim/startup.nvim'

" Syntax and langauge support
Plug 'hrsh7th/vim-vsnip-integ'
Plug 'hrsh7th/vim-vsnip'
Plug 'hrsh7th/cmp-vsnip'
Plug 'mboughaba/i3config.vim'
Plug 'ray-x/go.nvim'


" Utilies
Plug 'tpope/vim-commentary'
Plug 'windwp/nvim-autopairs'
Plug 'windwp/nvim-ts-autotag'
Plug 'akinsho/toggleterm.nvim'
Plug 'kevinhwang91/rnvimr'
Plug 'airblade/vim-rooter'
Plug 'lukas-reineke/indent-blankline.nvim'
Plug 'tpope/vim-surround'
Plug 'mbbill/undotree'
Plug 'mattn/vim-gist'
Plug 'mattn/webapi-vim'
Plug 'phaazon/hop.nvim'

call plug#end()

