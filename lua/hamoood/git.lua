require("hamoood.utils")
local neogit = require("neogit")
local gitsigns = require("gitsigns")

neogit.setup({})
gitsigns.setup({})

map("n", "<leader>gs", ":Neogit<cr>")
