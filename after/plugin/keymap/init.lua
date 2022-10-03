require("hamoood.utils")

map("i", "<C-c>", "<ESC>")
-- File explorer
map("n", "<leader>p", ":Ex<cr>")

-- Buffers
map({ "v", "n" }, "<Tab>", ":bn<cr>")
map({ "v", "n" }, "<S-Tab>", ":bp<cr>")

-- Navigation in splits
map("n", "<C-H>", "<C-W><C-H>")
map("n", "<C-L>", "<C-W><C-L>")
map("n", "<C-J>", "<C-W><C-J>")
map("n", "<C-K>", "<C-W><C-K>")

-- Resize splits
map("n", "<A-l>", "<C-W>5<")
map("n", "<A-h>", "<C-W>5>")
map("n", "<A-k>", "<C-W>+")
map("n", "<A-j>", "<C-W>-")

map("n", "<C-y>", "<C-w>:split<cr>")
map("n", "<C-w>", "<C-w>:vsplit<cr>")
