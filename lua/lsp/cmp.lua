local cmp = require("cmp")
local lspkind = require('lspkind')

-- local t = function(str)
--   return vim.api.nvim_replace_termcodes(str, true, true, true)
-- end

-- local check_back_space = function()
--   local col = vim.fn.col(".") - 1
--   return col == 0 or vim.fn.getline("."):sub(col, col):match("%s") ~= nil
-- end

cmp.setup({
    completion = {
        completeopt = 'menu,menuone,noinsert',
      },
     snippet = {
      expand = function(args)
        vim.fn["vsnip#anonymous"](args.body)
      end,
    },
    sources = {
      { name = 'nvim_lsp' },
      { name = 'vsnip' },
      { name = 'path' },
      { name = 'emoji' }
      -- more sources
    },
    formatting = {
      format = lspkind.cmp_format({
            with_text = false,
            symbol_map = {
              Text = '  ',
              Method = '  ',
              Function = '  ',
              Constructor = '  ',
              Variable = '[]',
              Class = '  ',
              Interface = ' 蘒',
              Module = '  ',
              Property = '  ',
              Unit = ' 塞 ',
              Value = '  ',
              Enum = ' 練',
              Keyword = '  ',
              Snippet = '  ',
              Color = '',
              File = '',
              Folder = ' ﱮ ',
              EnumMember = '  ',
              Constant = '  ',
              Struct = '  '
            },
        }),
    },
    mapping = {
      ['<CR>'] = cmp.mapping.confirm {
        behavior = cmp.ConfirmBehavior.Replace,
        select = true,
      },
      ['<C-Space>'] = cmp.mapping.complete(),
      ['<Tab>'] = cmp.mapping(cmp.mapping.select_next_item(), { 'i', 's' }),
      ['<S-Tab>'] = cmp.mapping.select_prev_item({ behavior = cmp.SelectBehavior.Select }),
          },
    })
