require("startup").setup({ theme = "dashboard" }) -- put theme name here

vim.g.startup_bookmarks = {
	["C"] = "~/.config/i3/config",
	["T"] = "~/.config/kitty/kitty.conf",
	["V"] = "~/.config/nvim/init.vim",
	["M"] = "~/.tmux.conf.local",
	["Z"] = "~/.zshrc",
}
