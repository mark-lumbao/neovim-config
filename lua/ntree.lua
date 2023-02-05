local vim = vim

local function open_nvim_tree(data)
	-- buffer is a directory
	local directory = vim.fn.isdirectory(data.file) == 1

	if not directory then
		return
	end

	-- change to the directory
	vim.cmd.cd(data.file)

	-- open the tree
	require("nvim-tree.api").tree.open()
end

vim.api.nvim_create_autocmd({ "VimEnter" }, { callback = open_nvim_tree })

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
