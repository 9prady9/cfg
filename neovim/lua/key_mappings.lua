vim.api.nvim_set_keymap('n','<Space>', '<NOP>', { noremap = true, silent = true })

vim.g.mapleader = ' '

vim.api.nvim_set_keymap('n','<Leader>h', ':set hlsearch!<CR>', { noremap = true, silent = true })

vim.api.nvim_set_keymap('n','<Leader>ff', ':Telescope find_files<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n','<Leader>lg', ':Telescope live_grep<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n','<Leader>of', ':Telescope oldfiles<CR>', { noremap = true, silent = true })

vim.api.nvim_set_keymap('n','<Leader>fx', ':CodeActionMenu<CR>', { noremap = true })

vim.api.nvim_set_keymap('n','<Leader>LG', ':LazyGit<CR>', { noremap = true })

vim.api.nvim_set_keymap('n',';', ':', { noremap = true })

--vim.api.nvim_set_keymap('n', '<C-h>', '<C-w>h', {silent = true})
--vim.api.nvim_set_keymap('n', '<C-j>', '<C-w>j', {silent = true})
--vim.api.nvim_set_keymap('n', '<C-k>', '<C-w>k', {silent = true})
--vim.api.nvim_set_keymap('n', '<C-l>', '<C-w>l', {silent = true})

vim.api.nvim_set_keymap('v', '<', '<gv', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', '>', '>gv', { noremap = true, silent = true })

vim.api.nvim_set_keymap('n', '<Leader>tb', ':TagbarToggle<CR>', { noremap = false })
vim.api.nvim_set_keymap('n', '<Leader>nt', ':NERDTreeToggle<CR>', { noremap = true })

vim.api.nvim_create_user_command("PeekOpen", require("peek").open, {})
vim.api.nvim_create_user_command("PeekClose", require("peek").close, {})

vim.g.copilot_no_tab_map = true
vim.api.nvim_set_keymap("i", "<A-Return>", 'copilot#Accept("<CR>")', { silent = true, expr = true })
vim.api.nvim_set_keymap("i", "<C-Up>", 'copilot#Previous()', { silent = true, expr = true })
vim.api.nvim_set_keymap("i", "<C-Down>", 'copilot#Next()', { silent = true, expr = true })
