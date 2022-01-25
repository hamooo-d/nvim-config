local cmp = require("cmp")
local lspkind = require("lspkind")

-- vim.cmd {{"set completeopt=menu,menuone,noselect"}}

local icons = {
	Text = "  ",
	Method = "  ",
	Function = "  ",
	Constructor = "  ",
	Variable = "[]",
	Class = "  ",
	Interface = " 蘒",
	Module = "  ",
	Property = "  ",
	Unit = " 塞 ",
	Value = "  ",
	Enum = " 練",
	Keyword = "  ",
	Snippet = "  ",
	Color = "",
	File = "",
	Folder = " ﱮ ",
	EnumMember = "  ",
	Constant = "  ",
	Struct = "  ",
}

cmp.setup({
	snippet = {
		expand = function(args)
			vim.fn["vsnip#anonymous"](args.body)
		end,
	},
	sources = cmp.config.sources({
		{ name = "nvim_lsp" },
		{ name = "vsnip" }, -- For vsnip users.
	}),
	formatting = {
		format = lspkind.cmp_format({ with_text = false, symbol_map = icons }),
	},
	experimental = { ghost_text = true },
	mapping = {
		["<CR>"] = cmp.mapping.confirm({
			behavior = cmp.ConfirmBehavior.Replace,
			select = true,
		}),
		["<C-Space>"] = cmp.mapping.complete(),
		["<Tab>"] = cmp.mapping(cmp.mapping.select_next_item(), { "i", "s" }),
		["<S-Tab>"] = cmp.mapping.select_prev_item({
			behavior = cmp.SelectBehavior.Select,
		}),
	},
})
