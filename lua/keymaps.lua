-- TODO: Convert all string :call to lua function calls

local vim = vim or {}
local map = vim.keymap.set
local telescope = require("telescope.builtin")

-- Clear search highlights
map("n", "<Escape>", ":noh<cr>", { noremap = true, silent = true })

-- Open Quickfix List
map("n", "<c-q>", ":copen<cr>", { noremap = true, silent = true })
map("n", "<c-l>", ":lopen<cr>", { noremap = true, silent = true })
map("n", "<leader>cq", function()
	vim.fn.setqflist({})
end, { noremap = true, silent = true })

-- Center cursor on navigation
map("n", "j", "jzz", { noremap = true, silent = true })
map("n", "k", "kzz", { noremap = true, silent = true })

-- Toggle NerdTree
map("n", "<leader>e", ":NvimTreeToggle<cr>", { noremap = true, silent = true })
map("n", "<leader>E", ":NvimTreeFindFile<cr>", { noremap = true, silent = true })

-- Toggle Format on-save
-- 1 = on, 0 = off
map("n", "<leader>an", function()
	vim.fn.setenv("AUTO_FMT", 0)
end, { noremap = true, silent = true })
map("n", "<leader>ay", function()
	vim.fn.setenv("AUTO_FMT", 1)
end, { noremap = true, silent = true })

-- Bubble single line
map("n", "<C-Up>", ":m .-2<CR>", { noremap = true, silent = true })
map("n", "<C-Down>", ":m .+1<CR>", { noremap = true, silent = true })

-- Bubble multiple lines
map("v", "<C-Up>", "xkP`[V`]", { noremap = true, silent = true })
map("v", "<C-Down>", "xp`[V`]", { noremap = true, silent = true })

-- Telescope Remaps
map("n", "<leader>ff", function()
	telescope.find_files()
end, {})
map("n", "<leader>fd", function()
	telescope.diagnostics()
end, {})
map("n", "<leader>fg", function()
	telescope.git_files()
end, {})
map("n", "<leader>fb", function()
	telescope.git_branches()
end, {})
map("n", "<leader>fk", function()
	telescope.keymaps()
end, {})
map("n", "<leader>fr", function()
	telescope.live_grep()
end, {})

-- Tab Navigation
for tc = 1, 9 do
	map("n", "<leader>" .. tc, ":tabn " .. tc .. "<cr>", { noremap = true, silent = true })
end
map("n", "tj", ":tabp<cr>", { noremap = true, silent = true })
map("n", "tk", ":tabn<cr>", { noremap = true, silent = true })

-- Tab Open/Close
map("n", "tn", ":tabnew<cr>", { noremap = true, silent = true })
map("n", "tc", ":tabc<cr>", { noremap = true, silent = true })
map("n", "ty", ":tab split <cr>", { noremap = true, silent = true })
map("n", "tmj", ":tabm- <cr>", { noremap = true, silent = true })
map("n", "tmk", ":tabm+ <cr>", { noremap = true, silent = true })

-- Window Navigation
for _, v in pairs({ "h", "j", "k", "l" }) do
	map("n", "<leader>" .. v, ":wincmd " .. v .. "<CR>", { silent = true })
	map("n", "<leader>" .. string.upper(v), ":wincmd " .. string.upper(v) .. "<CR>", { silent = true })
end

-- Window Open/Close
map("n", "<leader>s", ":wincmd s<CR>", { silent = true })
map("n", "<leader>v", ":wincmd v<CR>", { silent = true })
map("n", "<leader>o", ":on <CR>", { silent = true })
map("n", "<leader><leader>", ":wincmd c<CR>", { silent = true })

-- Window Resize
map("n", "<leader><right>", ":vertical resize +10<cr>", { silent = true })
map("n", "<leader><left>", ":vertical resize -10<cr>", { silent = true })
map("n", "<leader><up>", ":resize -10<cr>", { silent = true })
map("n", "<leader><down>", ":resize +10<cr>", { silent = true })

-- Terminal Mode
map("n", "<leader>~", ":tabnew | te <cr> | i", { noremap = true })
map("n", "<leader>g~", ":vs | te <cr> | i", { noremap = true })
