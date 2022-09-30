require "hamoood.utils"

-- TODO: find better way to escape
--map("i", "jk", "<ESC>", { remap = false })
--map("v", "<C-c>", "<ESC>", { remap = false })

-- File explorer
map("n", "<leader>p", ":Ex<cr>")

-- Buffers
map({"v", "n"}, "<Tab>", ":bn<cr>")
map({"v", "n"}, "<S-Tab>", ":bp<cr>")

-- Navigation in splits
map("n", "<C-H>", "<C-W><C-H>")
map("n", "<C-L>", "<C-W><C-L>")
map("n", "<C-J>", "<C-W><C-J>")
map("n", "<C-K>", "<C-W><C-K>")

-- Resize splits
map("n", "<A-.>", "<C-W><")
map("n", "<A-,>", "<C-W>>")
map("n", "<C-.>", "<C-W>+")
map("n", "<C-,>", "<C-W>-")

map("n", "<C-w>", "<C-w>:split<cr>", {remap = true})
map("n", "<C-y>", "<C-w>:vsplit<cr>")

-- Change directory
map("n", "<leader>cd ", ":windo cd")
