require'nvim-treesitter.configs'.setup{highlight={enable=true}}

-- vim.opt.foldmethod     = 'expr'
-- vim.opt.foldexpr       = 'nvim_treesitter#foldexpr()'
---WORKAROUND
--vim.api.nvim_create_autocmd({'BufAdd','BufNew','BufNewFile'}, {
--  group = vim.api.nvim_create_augroup('ts_fold_workaround', { clear = true }),
--  callback = function()
--    vim.opt.foldmethod = 'syntax'
--    vim.opt.foldexpr   = 'nvim_treesitter#foldexpr()'
--    vim.opt.foldlevel  = 1
--  end
--})
---ENDWORKAROUND
