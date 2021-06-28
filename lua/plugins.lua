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
    use {"wbthomason/packer.nvim", opt = true}

    -- Hightlights
    use 'nvim-treesitter/nvim-treesitter'
    use 'sheerun/vim-polyglot'
    use 'p00f/nvim-ts-rainbow'
    use 'windwp/nvim-ts-autotag'
    use 'luochen1990/rainbow'
    use 'ekalinin/Dockerfile.vim'
    use 'pantharshit00/vim-prisma'

    -- Explorer
    use 'kyazdani42/nvim-web-devicons'
    use {
        'kyazdani42/nvim-tree.lua',
        commit = '577df96b07d4545361e029ea85190b118f73f9fc'
    }
    use "ryanoasis/vim-devicons"

    -- LSP
    use 'neovim/nvim-lspconfig'
    use 'onsails/lspkind-nvim'
    use 'kabouzeid/nvim-lspinstall'
    use 'glepnir/lspsaga.nvim'
    use 'mattn/emmet-vim'
    use {
        "folke/trouble.nvim",
        requires = "kyazdani42/nvim-web-devicons",
        config = function()
            require("trouble").setup {
                -- your configuration comes here
                -- or leave it empty to use the default settings
                -- refer to the configuration section below
            }
        end
    }

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
    use 'lewis6991/gitsigns.nvim'

    -- Utilies
    use 'jremmen/vim-ripgrep'
    use 'janko/vim-test'
    use 'mbbill/undotree'
    use 'jiangmiao/auto-pairs'
    use 'tpope/vim-surround'
    use 'windwp/nvim-autopairs'
    use 'glepnir/galaxyline.nvim'
    use 'terrortylor/nvim-comment'
    use 'voldikss/vim-floaterm'
    use {'lukas-reineke/indent-blankline.nvim', branch = 'lua'}
    use 'easymotion/vim-easymotion'
    use 'airblade/vim-rooter'
    use 'kevinhwang91/rnvimr'
    use 'romgrk/barbar.nvim'

    -- Colors
    use 'gruvbox-community/gruvbox'
    use 'norcalli/nvim-colorizer.lua'

    -- Formatings
    use {'prettier/vim-prettier', run = 'yarn install'}
    use 'andrejlevkovitch/vim-lua-format'

end)
