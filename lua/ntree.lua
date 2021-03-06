-- following options are the default
-- each of these are documented in `:help nvim-tree.OPTION_NAME`
require("nvim-tree").setup({
	renderer = {
		icons = {
			show = {
				git = true,
				folder = true,
				file = true,
				folder_arrow = false,
			},
		},
	},
	disable_netrw = true,
	hijack_netrw = true,
	open_on_setup = true,
	ignore_ft_on_setup = {},
	auto_reload_on_write = true,
	open_on_tab = false,
	hijack_cursor = false,
	update_cwd = false,
	diagnostics = {
		enable = false,
		icons = {
			hint = "",
			info = "",
			warning = "",
			error = "",
		},
	},
	update_focused_file = {
		enable = false,
		update_cwd = false,
		ignore_list = {},
	},
	system_open = {
		cmd = nil,
		args = {},
	},
	filters = {
		dotfiles = false,
		custom = {},
	},
	git = {
		enable = true,
		ignore = true,
		timeout = 500,
	},
	view = {
		width = 50,
		height = 50,
		hide_root_folder = false,
		side = "left",
		mappings = {
			custom_only = false,
			list = {},
		},
		number = true,
		relativenumber = true,
		signcolumn = "yes",
	},
	trash = {
		cmd = "trash",
		require_confirm = true,
	},
	actions = {
		change_dir = {
			global = false,
		},
		open_file = {
			quit_on_open = true,
		},
	},
})
