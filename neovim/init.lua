--[[
-- Include Plugins First
]]
require('plugins')
require('peek').setup({
  auto_load = true,         -- whether to automatically load preview when
                            -- entering another markdown buffer
  close_on_bdelete = true,  -- close preview window on buffer delete

  syntax = true,            -- enable syntax highlighting, affects performance

  theme = 'dark',           -- 'dark' or 'light'

  update_on_change = true,

  app = 'webview',          -- 'webview', 'browser', string or a table of strings
                            -- explained below

  filetype = { 'markdown' },-- list of filetypes to recognize as markdown

  -- relevant if update_on_change is true
  throttle_at = 200000,     -- start throttling when file exceeds this
                            -- amount of bytes in size
  throttle_time = 'auto',   -- minimum amount of time in milliseconds
                            -- that has to pass before starting new render
})

--[[
-- Include individual plugin specific modules
]]
require("transparent").setup({
  groups = { -- table: default groups
    'Normal', 'NormalNC', 'Comment', 'Constant', 'Special', 'Identifier',
    'Statement', 'PreProc', 'Type', 'Underlined', 'Todo', 'String', 'Function',
    'Conditional', 'Repeat', 'Operator', 'Structure', 'LineNr', 'NonText',
    'SignColumn', 'CursorLineNr', 'EndOfBuffer',
  },
  extra_groups = {}, -- table: additional groups that should be cleared
  exclude_groups = {}, -- table: groups you don't want to clear
})
require('dashboard-config')
require('autocommands')
require('my-fidget')
require('illuminate').configure({
  providers = {
    'lsp',
    'treesitter',
  },
  under_cursor = true,
})
require('impatient')
require('lualine').setup {
  options = { theme = 'PaperColor' }
}
require('lspconfigs')
require('treesitter')
require('trouble').setup()
require('lsp_signature').setup()
require('which-key').setup()

--[[
-- Keep settings, key mappings and post plugin ops always towards end
]]
require('settings')
require('key_mappings')
require('my_own_snippets')
