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

-- Telescope Remaps
map("n", "<leader>ff", function()
	telescope.find_files()
end, {})
map("n", "<leader>fq", function()
	telescope.quickfix()
end, {})
map("n", "<leader>fQ", function()
	telescope.quickfixhistory()
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

-- Tab Navigation
map("n", "<leader>1", ":tabn 1<cr>", { noremap = true, silent = true })
map("n", "<leader>2", ":tabn 2<cr>", { noremap = true, silent = true })
map("n", "<leader>3", ":tabn 3<cr>", { noremap = true, silent = true })
map("n", "<leader>4", ":tabn 4<cr>", { noremap = true, silent = true })
map("n", "<leader>5", ":tabn 5<cr>", { noremap = true, silent = true })
map("n", "<leader>6", ":tabn 6<cr>", { noremap = true, silent = true })
map("n", "<leader>7", ":tabn 7<cr>", { noremap = true, silent = true })
map("n", "<leader>8", ":tabn 8<cr>", { noremap = true, silent = true })
map("n", "<leader>9", ":tabn 9<cr>", { noremap = true, silent = true })
map("n", "<Tab>", ":tabn<cr>", { noremap = true, silent = true })
map("n", "<S-Tab>", ":tabp<cr>", { noremap = true, silent = true })

-- Tab Open/Close
map("n", "nt", ":tabnew<cr>", { noremap = true, silent = true })
map("n", "yt", ":tab split <cr>", { noremap = true, silent = true })
map("n", "<BS>", ":tabc<cr>", { noremap = true, silent = true })

-- Window Navigation
map("n", "<leader>H", ":wincmd H<CR>", { silent = true })
map("n", "<leader>L", ":wincmd L<CR>", { silent = true })
map("n", "<leader>K", ":wincmd K<CR>", { silent = true })
map("n", "<leader>J", ":wincmd J<CR>", { silent = true })
map("n", "<leader>h", ":wincmd h<CR>", { silent = true })
map("n", "<leader>l", ":wincmd l<CR>", { silent = true })
map("n", "<leader>k", ":wincmd k<CR>", { silent = true })
map("n", "<leader>j", ":wincmd j<CR>", { silent = true })
map("n", "<leader>s", ":wincmd s<CR>", { silent = true })
map("n", "<leader>v", ":wincmd v<CR>", { silent = true })
map("n", "<leader>o", ":on <CR>", { silent = true })
map("n", "<leader><leader>", ":wincmd c<CR>", { silent = true })

-- Terminal Mode
map("n", "<leader>te", ":te <cr> | i", { noremap = true })
map("n", "<leader>tt", ":tabnew | te <cr> | i", { noremap = true })
