local prettier = {
    formatCommand = 'prettierd "${INPUT}"',
    formatStdin = true,
    env = {
        string.format('PRETTIERD_DEFAULT_CONFIG=%s',
                      vim.fn.expand('~/.config/nvim/util/.prettierrc.json'))
    }
}
return prettier
