return require('packer').startup(function(use)
    use("wbthomason/packer.nvim")
    use 'kyazdani42/nvim-web-devicons'

    use {
      'nvim-telescope/telescope.nvim', tag = '0.1.0',
    -- or                            , branch = '0.1.x',
      requires = { {'nvim-lua/plenary.nvim'}, { 'kyazdani42/nvim-web-devicons', opt = true } }
    }

    use 'ellisonleao/gruvbox.nvim'
    use 'folke/tokyonight.nvim'
    use { 
        'nvim-treesitter/nvim-treesitter',
        run = function()
            vim.cmd("TSUpdate")
        end,
    }

      use 'neovim/nvim-lspconfig' -- Configurations for Nvim LSP
    use  'norcalli/nvim-colorizer.lua'
    use {
  'nvim-lualine/lualine.nvim',
  requires = { 'kyazdani42/nvim-web-devicons', opt = true }}

    use { 'TimUntersberger/neogit', requires = 'nvim-lua/plenary.nvim' }
    use 'lewis6991/gitsigns.nvim'
end)

