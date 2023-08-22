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

-- Git
map("n", "<leader>gs", ":Git status<cr>", {})
map("n", "<leader>gd", ":Git diff<cr>", {})
map("n", "<leader>gv", ":GV!<cr>", {})
map("n", "<leader>gV", ":GV<cr>", {})

-- Splits Resize
map("n", "<leader><right>", ":vertical resize +10<cr>", { silent = true })
map("n", "<leader><left>", ":vertical resize -10<cr>", { silent = true })
map("n", "<leader><up>", ":resize -10<cr>", { silent = true })
map("n", "<leader><down>", ":resize +10<cr>", { silent = true })

-- Splits Navigation
map("n", "<leader>h", ":wincmd h<CR>", { silent = true })
map("n", "<leader>l", ":wincmd l<CR>", { silent = true })
map("n", "<leader>k", ":wincmd k<CR>", { silent = true })
map("n", "<leader>j", ":wincmd j<CR>", { silent = true })
map("n", "<leader><leader>", ":wincmd c<CR>", { silent = true })

-- Telescope Remaps
map("n", "<leader>ff", function()
	telescope.find_files()
end, {})
map("n", "<leader>fg", function()
	telescope.git_files()
end, {})
map("n", "<leader>fG", function()
	telescope.git_branches()
end, {})
map("n", "<leader>fb", function()
	telescope.buffers()
end, {})
map("n", "<leader>fk", function()
	telescope.keymaps()
end, {})
map("n", "<leader>rg", function()
	telescope.live_grep()
end, {})

-- Tabline/Tabs/Buffers
map("n", "t1", ":tabn 1<cr>", { noremap = true, silent = true })
map("n", "t2", ":tabn 2<cr>", { noremap = true, silent = true })
map("n", "t3", ":tabn 3<cr>", { noremap = true, silent = true })
map("n", "t4", ":tabn 4<cr>", { noremap = true, silent = true })
map("n", "t5", ":tabn 5<cr>", { noremap = true, silent = true })
map("n", "t6", ":tabn 6<cr>", { noremap = true, silent = true })
map("n", "t7", ":tabn 7<cr>", { noremap = true, silent = true })
map("n", "t8", ":tabn 8<cr>", { noremap = true, silent = true })
map("n", "t9", ":tabn 9<cr>", { noremap = true, silent = true })
map("n", "tt", ":tabnew<cr>", { noremap = true, silent = true })
map("n", "tl", ":tabn<cr>", { noremap = true, silent = true })
map("n", "th", ":tabp<cr>", { noremap = true, silent = true })
map("n", "tc", ":tabc<cr>", { noremap = true, silent = true })

-- Terminal Mode
map("n", "<leader>te", ":te <cr>", { noremap = true })
map("n", "<leader>tt", ":tabnew | te <cr>", { noremap = true })
