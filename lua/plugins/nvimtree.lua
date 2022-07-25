require("nvim-tree").setup({
	-- disables netrw completely
	disable_netrw = false,
	-- hijack netrw window on startup
	hijack_netrw = true,
	-- open the tree when running this setup function
	open_on_setup = false,
	-- will not open on setup if the filetype is in this list
	ignore_ft_on_setup = {},
	-- closes neovim automatically when the tree is the last **WINDOW** in the view
	open_on_tab = false,
	-- hijack the cursor in the tree to put it at the start of the filename
	hijack_cursor = true,
	-- updates the root directory of the tree on `DirChanged` (when your run `:cd` usually)
	update_cwd = true,
	-- show lsp diagnostics in the signcolumn
	-- update the focused file on `BufEnter`, un-collapses the folders recursively until it finds the file
	update_focused_file = {
		-- enables the feature
		enable = true,
		-- update the root directory of the tree to the one of the folder containing the file if the file is not under the current root directory
		-- only relevant when `update_focused_file.enable` is true
		update_cwd = true,
		-- list of buffer names / filetypes that will not update the cwd if the file isn't found under the current root directory
		-- only relevant when `update_focused_file.update_cwd` is true and `update_focused_file.enable` is true
		ignore_list = {},
	},
	-- configuration options for the system open command (`s` in the tree by default)
	system_open = {
		-- the command to run this, leaving nil should work in most cases
		cmd = nil,
		-- the command arguments as a list
		args = {},
	},
	diagnostics = {
		enable = false,
	},
	view = {
		-- adaptive_size = true,
		-- width of the window, can be either a number (columns) or a string in `%`
		width = 28,
		-- side of the tree, can be one of 'left' | 'right' | 'top' | 'bottom'
		side = "left",
<<<<<<< HEAD
		-- if true the tree will resize itself after opening a file
=======
>>>>>>> a3b3df1511c340501021210591e15fb0c7c087ef
		mappings = {
			-- custom only false will merge the list with the default mappings
			-- if true, it will only use your list to set the mappings
			custom_only = false,
			-- list of mappings to set on the tree manually
			list = {
<<<<<<< HEAD
				key = "<C-e>",
				action = "",
=======
				{ key = "<C-e>", action = "" },
>>>>>>> a3b3df1511c340501021210591e15fb0c7c087ef
			},
		},
	},
	git = {
		enable = true,
		ignore = false,
		timeout = 50,
	},
	filters = {
		custom = {
			".git",
			"node_modules",
			".cache",
			".eslintcache",
			"tmp",
			".yarn",
			".husky",
		},
	},
	actions = {
<<<<<<< HEAD
		open_file = {
			quit_on_open = true,
		},
	},
})

vim.api.nvim_create_autocmd("BufEnter", {
	command = "if winnr('$') == 1 && bufname() == 'NvimTree_' . tabpagenr() | quit | endif",
	nested = true,
})

vim.api.nvim_create_autocmd("BufEnter", {
	nested = true,
	callback = function()
		if #vim.api.nvim_list_wins() == 1 and vim.api.nvim_buf_get_name(0):match("NvimTree_") ~= nil then
			vim.cmd("quit")
		end
	end,
=======
		use_system_clipboard = true,
		change_dir = {
			enable = true,
			global = false,
			restrict_above_cwd = false,
		},
		open_file = {
			quit_on_open = true,
			resize_window = true,
			window_picker = {
				enable = true,
				chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890",
				exclude = {
					filetype = { "notify", "packer", "qf", "diff", "fugitive", "fugitiveblame", "startify" },
					buftype = { "nofile", "terminal", "help" },
				},
			},
		},
	},
	renderer = {
		indent_markers = {
			enable = false,
			icons = {
				corner = "└ ",
				edge = "│ ",
				none = "  ",
			},
		},
	},
>>>>>>> a3b3df1511c340501021210591e15fb0c7c087ef
})

vim.cmd("autocmd BufEnter * ++nested if winnr('$') == 1 && bufname() == 'NvimTree_' . tabpagenr() | quit | endif")
