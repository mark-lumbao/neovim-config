-- autofm()
-- indicates whether environment variable AUTO_FMT
-- is on or off
local function autofm()
	local aft = tonumber(vim.fn.getenv("AUTO_FMT"))
	if aft == 1 then
		return "󰃢"
	else
		return "󰃢!"
	end
end

require("lualine").setup({
	options = {
		icons_enabled = true,
		theme = "ayu_mirage",
		component_separators = { left = "", right = "" },
		section_separators = { left = "", right = "" },
		disabled_filetypes = {},
		always_divide_middle = true,
	},
	sections = {
		lualine_a = { "mode" },
		lualine_b = { "branch", "diff", { "diagnostics", sources = { "nvim_diagnostic", "ale" } } },
		lualine_c = { "filename" },
		lualine_x = { "encoding", "fileformat", "filetype" },
		lualine_y = { "progress", autofm },
		lualine_z = { "location" },
	},
	inactive_sections = {
		lualine_a = {},
		lualine_b = {},
		lualine_c = { "filename" },
		lualine_x = { "location" },
		lualine_y = {},
		lualine_z = {},
	},
	tabline = {},
	extensions = {},
})
