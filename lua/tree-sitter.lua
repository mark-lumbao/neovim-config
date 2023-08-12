local vim = vim or {}

require("nvim-treesitter.configs").setup({
	ensure_installed = {
		"bash",
		"comment",
		"cpp",
		"css",
		"dockerfile",
		"elm",
		"fish",
		"haskell",
		"html",
		"java",
		"javascript",
		"json",
		"lua",
		"python",
		"regex",
		"rust",
		"scss",
		"svelte",
		"tsx",
		"typescript",
		"vim",
		"yaml",
	},
	indent = {
		enable = true,
	},
	highlight = {
		enable = true, -- false will disable the whole extension
		-- Setting this to true will run `:h syntax` and tree-sitter at the same time.
		-- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
		-- Using this option may slow down your editor, and you may see some duplicate highlights.
		-- Instead of true it can also be a list of languages
		additional_vim_regex_highlighting = false,
	},
})

-- Folding setup

local api = vim.api
local M = {}

vim.o.foldmethod = "expr"
vim.o.foldexpr = "nvim_treesitter#foldexpr()"
-- function to create a list of commands and convert them to autocommands
-------- This function is taken from https://github.com/norcalli/nvim_utils
function M.nvim_create_augroups(definitions)
	for group_name, definition in pairs(definitions) do
		api.nvim_command("augroup " .. group_name)
		api.nvim_command("autocmd!")
		for _, def in ipairs(definition) do
			local command = table.concat(vim.tbl_flatten({ "autocmd", def }), " ")
			api.nvim_command(command)
		end
		api.nvim_command("augroup END")
	end
end

local autoCommands = {
	-- other autocommands
	open_folds = {
		{ "BufReadPost,FileReadPost", "*", "normal zR" },
	},
}

M.nvim_create_augroups(autoCommands)
