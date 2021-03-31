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

    -- Explorer
    use 'kyazdani42/nvim-web-devicons'
    use 'kyazdani42/nvim-tree.lua'
    use "ryanoasis/vim-devicons"

    -- LSP
    use 'neovim/nvim-lspconfig'
    use 'nvim-lua/completion-nvim'
    use 'anott03/nvim-lspinstall'
    use "windwp/nvim-autopairs"

    -- Completion
    use 'hrsh7th/nvim-compe'
    use 'hrsh7th/vim-vsnip'
    use 'norcalli/snippets.nvim'

    -- Telescope
    use 'nvim-lua/popup.nvim'
    use 'nvim-lua/plenary.nvim'
    use 'nvim-telescope/telescope.nvim'

    -- Utilies
    use 'jremmen/vim-ripgrep'
    use 'janko/vim-test'
    use 'preservim/nerdtree'
    use 'mbbill/undotree'
    use 'tpope/vim-fugitive'
    use 'tpope/vim-rhubarb'
    use 'jiangmiao/auto-pairs'
    use 'tpope/vim-surround'
    use 'scrooloose/nerdcommenter'
    use 'vim-airline/vim-airline'
    use 'vim-airline/vim-airline-themes'

    -- Colorscheme
    use 'tjdevries/colorbuddy.nvim'
    use 'joshdick/onedark.vim'
    use 'sonph/onehalf'
    use 'morhetz/gruvbox'
    use 'bkegley/gloombuddy'
    -- sneaking some formatting in here too
    use {'prettier/vim-prettier', run = 'yarn install'}

end)
