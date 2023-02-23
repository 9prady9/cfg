--[[
-- Include Plugins First
]]
require('plugins')

--[[
-- Include individual plugin specific modules
]]
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
