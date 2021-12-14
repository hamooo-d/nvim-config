vim.fn.sign_define("LspDiagnosticsSignError",
                   {text = " 🞮", numhl = "LspDiagnosticsDefaultError"})
vim.fn.sign_define("LspDiagnosticsSignWarning",
                   {text = " ▲", numhl = "LspDiagnosticsDefaultWarning"})
vim.fn.sign_define("LspDiagnosticsSignInformation",
                   {text = " ⁈", numhl = "LspDiagnosticsDefaultInformation"})
vim.fn.sign_define("LspDiagnosticsSignHint",
                   {text = " ⯁", numhl = "LspDiagnosticsDefaultHint"})

require('lspkind').init({
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
    }
})

-- require'lspsaga'.init_lsp_saga {
--     -- use_saga_diagnostic_sign = true,
--     -- error_sign = '',
--     -- warn_sign = '',
--     -- hint_sign = '',
--     -- infor_sign = '',
--     -- diagnostic_header_icon = '   ',
--     -- code_action_icon = ' ',
--     -- code_action_prompt = {
--     --     enable = true,
--     --     sign = true,
--     --     sign_priority = 20,
--     --     virtual_text = true
--     -- }
-- }

