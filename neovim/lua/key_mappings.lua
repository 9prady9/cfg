vim.api.nvim_set_keymap('n','<Space>', '<NOP>', { noremap = true, silent = true })

vim.g.mapleader = ' '

vim.api.nvim_set_keymap('n','<Leader>h', ':set hlsearch!<CR>', { noremap = true, silent = true })

vim.api.nvim_set_keymap('n','<Leader>ff', ':FzfLua files<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n','<Leader>lg', ':FzfLua live_grep<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n','<Leader>bf', ':FzfLua buffers<CR>', { noremap = true, silent = true })

vim.api.nvim_set_keymap('n','<Leader>fx', ':FzfLua lsp_code_actions<CR>', { noremap = true })
vim.api.nvim_set_keymap('n','<Leader>ldd', ':FzfLua diagnostics_document<CR>', { noremap = true })
vim.api.nvim_set_keymap('n','<Leader>ldw', ':FzfLua diagnostics_workspace<CR>', { noremap = true })
vim.api.nvim_set_keymap('n','<Leader>lr', ':FzfLua lsp_references<CR>', { noremap = true })

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
