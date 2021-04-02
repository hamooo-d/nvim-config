local vim = vim
local execute = vim.api.nvim_command
local fn = vim.fn

-- ensure that packer is installed
local install_path = fn.stdpath('data') .. '/site/pack/packer/opt/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
    execute('!git clone https://github.com/wbthomason/packer.nvim ' ..
                install_path)
    execute 'packadd packer.nvim'
end

vim.cmd('packadd packer.nvim')

local packer = require 'packer'
local util = require 'packer.util'

packer.init({
    package_root = util.join_paths(vim.fn.stdpath('data'), 'site', 'pack')
})

--- startup and add configure plugins
packer.startup(function()
    local use = use

    -- Packer
    use 'wbthomason/packer.nvim'

    -- Hightlights
    use 'nvim-treesitter/nvim-treesitter'
    use 'sheerun/vim-polyglot'
    use 'mattn/emmet-vim'
    use 'p00f/nvim-ts-rainbow'
    use 'windwp/nvim-ts-autotag'

    -- Explorer
    use 'kyazdani42/nvim-web-devicons'
    use 'kyazdani42/nvim-tree.lua'
    use "ryanoasis/vim-devicons"

    -- LSP
    use 'neovim/nvim-lspconfig'
    use 'anott03/nvim-lspinstall'
    use 'onsails/lspkind-nvim'
    use 'glepnir/lspsaga.nvim'

    -- Completion
    use 'hrsh7th/nvim-compe'
    use 'hrsh7th/vim-vsnip'
    use 'norcalli/snippets.nvim'

    -- Telescope
    use 'nvim-lua/popup.nvim'
    use 'nvim-lua/plenary.nvim'
    use 'nvim-telescope/telescope.nvim'
    use "nvim-telescope/telescope-media-files.nvim"

    -- Git
    use 'tpope/vim-fugitive'
    use 'tpope/vim-rhubarb'
    use "lewis6991/gitsigns.nvim"

    -- Utilies
    use 'jremmen/vim-ripgrep'
    use 'janko/vim-test'
    use 'mbbill/undotree'
    use 'jiangmiao/auto-pairs'
    use 'tpope/vim-surround'
    use 'vim-airline/vim-airline'
    use 'vim-airline/vim-airline-themes'
    use 'terrortylor/nvim-comment'
    use 'voldikss/vim-floaterm'
    use 'lukas-reineke/indent-blankline.nvim'
    use "windwp/nvim-autopairs"

    -- Colors
    use 'chriskempson/base16-vim'
    use 'norcalli/nvim-colorizer.lua'

    -- Formatings
    use {'prettier/vim-prettier', run = 'yarn install'}
    use 'andrejlevkovitch/vim-lua-format'

end)
