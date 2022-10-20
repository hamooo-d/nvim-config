return require("packer").startup(function(use)
	-- Packer itself
	use("wbthomason/packer.nvim")

	-- LSP Stuff
	use("neovim/nvim-lspconfig")

	use("hrsh7th/cmp-nvim-lsp")
	use("hrsh7th/cmp-buffer")
	use("hrsh7th/cmp-path")
	use("hrsh7th/cmp-cmdline")
	use("hrsh7th/nvim-cmp")
	use("L3MON4D3/LuaSnip")
	use("jose-elias-alvarez/null-ls.nvim")
	use({
		"glepnir/lspsaga.nvim",
		branch = "main",
		requires = { "kyazdani42/nvim-web-devicons", opt = true },
	})
	use({
		"folke/trouble.nvim",
	})

	-- TS
	use({
		"nvim-treesitter/nvim-treesitter",
		run = function()
			vim.cmd("TSUpdate")
		end,
	})
	-- Telescope
	use({
		"nvim-telescope/telescope.nvim",
		tag = "0.1.0",
		requires = { { "nvim-lua/plenary.nvim" } },
	})
	use("nvim-telescope/telescope-fzf-native.nvim")
	use("nvim-telescope/telescope-project.nvim")

	-- Git
	use({ "TimUntersberger/neogit", requires = "nvim-lua/plenary.nvim" })
	use("lewis6991/gitsigns.nvim")

	-- Themes
	use("ellisonleao/gruvbox.nvim")
	use("folke/tokyonight.nvim")
	use("norcalli/nvim-colorizer.lua")

	-- Status bar
	use({
		"nvim-lualine/lualine.nvim",
		requires = { "kyazdani42/nvim-web-devicons", opt = true },
	})
	use({ "akinsho/bufferline.nvim", tag = "v2.*", requires = "kyazdani42/nvim-web-devicons" })

	-- Icons
	use({
		"yamatsum/nvim-nonicons",
		requires = { "kyazdani42/nvim-web-devicons" },
	})
	use("kyazdani42/nvim-web-devicons")
	use("onsails/lspkind.nvim")

	-- temp escape
	use("max397574/better-escape.nvim")

	-- pairs
	use({
		"windwp/nvim-autopairs",
	})
	use("windwp/nvim-ts-autotag")
end)
