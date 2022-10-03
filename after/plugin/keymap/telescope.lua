require "hamoood.utils"

map("n", "<leader>ff", "<cmd>Telescope find_files theme=ivy<cr>")
map("n", "<leader>fs", "<cmd>Telescope live_grep theme=ivy<cr>")
map("n", "<leader>fo", "<cmd>Telescope oldfiles theme=ivy<cr>")
map("n", "<leader>fb", "<cmd>Telescope buffers theme=ivy<cr>")
map("n", "<leader>fp", "<cmd>lua require'telescope'.extensions.project.project{}<cr>")
