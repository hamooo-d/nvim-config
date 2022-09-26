return require('packer').startup(function(use)
    use("wbthomason/packer.nvim")

    use {
      'nvim-telescope/telescope.nvim', tag = '0.1.0',
    -- or                            , branch = '0.1.x',
      requires = { {'nvim-lua/plenary.nvim'} }
    }

    use 'ellisonleao/gruvbox.nvim'
    use 'folke/tokyonight.nvim'
    use { 
        'nvim-treesitter/nvim-treesitter',
        run = function()
            vim.cmd("TSUpdate")
        end,
    }

    use {
  'nvim-lualine/lualine.nvim',
  requires = { 'kyazdani42/nvim-web-devicons', opt = true }
}
end)

