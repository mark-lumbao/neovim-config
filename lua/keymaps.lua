local map = vim.api.nvim_set_keymap

-- Clear search highlights
map( 'n', '<Escape>', ':noh <CR>', { noremap =  true, silent = true })

-- Center cursor on navigation
map( 'n', 'j', 'jzz', { noremap =  true, silent = true })
map( 'n', 'k', 'kzz', { noremap =  true, silent = true })

-- Toggle NerdTree
map( 'n', '<leader>e', ':NERDTreeToggle <CR>', { noremap =  true, silent = true })

-- Bubble single line
map( 'n', '<C-Up>', ':m .-2<CR>', { noremap = true, silent = true })
map( 'n', '<C-Down>', ':m .+1<CR>', { noremap = true, silent = true })
-- Bubble multiple lines
map( 'v', '<C-Up>', 'xkP`[V`]', { noremap = true, silent = true })
map( 'v', '<C-Down>', 'xp`[V`]', { noremap = true, silent = true })

-- Go to definition
map( 'n', 'gd', '<Plug>(coc-definition)', { silent = true })
map( 'n', 'gy', '<Plug>(coc-type-definition)', { silent = true })
map( 'n', 'gi', '<Plug>(coc-implementation)', { silent = true })
map( 'n', 'gr', '<Plug>(coc-references)', { silent = true })

-- Rename
map( 'n', '<F2>', '<Plug>(coc-rename)', {})

-- Git
map( 'n', 'gs', ':Git status <CR>', {})

-- Splits Resize
map('n', '<leader><right>', ':vertical resize +10 <CR>', { silent = true })
map('n', '<leader><left>', ':vertical resize -10 <CR>', { silent = true })
map('n', '<leader><up>', ':resize -10 <CR>', { silent = true })
map('n', '<leader><down>', ':resize +10 <CR>', { silent = true })
-- Splits Navigation
map('n', '<leader>h', ':wincmd h<CR>', { silent = true })
map('n', '<leader>l', ':wincmd l<CR>', { silent = true })
map('n', '<leader>k', ':wincmd k<CR>', { silent = true })
map('n', '<leader>j', ':wincmd j<CR>', { silent = true })
map('n', '<leader><leader>', ':wincmd c<CR>', { silent = true })

-- Telescope Remaps
map('n', '<leader>ff', '<cmd>lua require(\'telescope.builtin\').find_files()<cr>', {})
map('n', '<leader>fg', '<cmd>lua require(\'telescope.builtin\').git_files()<cr>', {})
map('n', '<leader>fG', '<cmd>lua require(\'telescope.builtin\').git_branches()<cr>', {})
map('n', '<leader>fb', '<cmd>lua require(\'telescope.builtin\').buffers()<cr>', {})
map('n', '<leader>fB', '<cmd>lua require(\'telescope.builtin\').file_browser()<cr>', {})
map('n', '<leader>lg', '<cmd>lua require(\'telescope.builtin\').live_grep()<cr>', {})

-- Tab Navigation
map('n', '<M-1>', ':tabn 1 <CR>', { noremap = true, silent = true })
map('n', '<M-2>', ':tabn 2 <CR>', { noremap = true, silent = true })
map('n', '<M-3>', ':tabn 3 <CR>', { noremap = true, silent = true })
map('n', '<M-4>', ':tabn 4 <CR>', { noremap = true, silent = true })
map('n', '<M-5>', ':tabn 5 <CR>', { noremap = true, silent = true })
map('n', '<M-6>', ':tabn 6 <CR>', { noremap = true, silent = true })
map('n', '<M-7>', ':tabn 7 <CR>', { noremap = true, silent = true })
map('n', '<M-8>', ':tabn 8 <CR>', { noremap = true, silent = true })
map('n', '<M-9>', ':tabn 9 <CR>', { noremap = true, silent = true })
map('n', '<M-Tab>', ':tabn <CR>', { noremap = true, silent = true })
map('n', '<S-Tab>', ':tabp <CR>', { noremap = true, silent = true })
