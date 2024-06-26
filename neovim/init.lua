--[[
-- Include Plugins First
]]
require('plugins')
require("peek").setup()

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
