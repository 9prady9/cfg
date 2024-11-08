local db = require('dashboard')
local home = os.getenv('HOME')

--db.preview_file_path = home .. '/Pictures/fam.ansi.txt'
--db.preview_file_width = 256

db.custom_center = {
  {icon = '',  desc = '    Find File          ', action = 'FzfLua files', shortcut = 'SPC f f'},
  {icon = '',  desc = '    Search Text        ', action = 'FzfLua live_grep', shortcut = 'SPC l g'},
  {icon = '',  desc = '    Recent Files       ', action = 'FzfLua oldfiles', shortcut = 'SPC o f'},
  {icon = '',  desc = '    Config             ', action = 'edit ~/.config/nvim/init.lua'}
}

db.custom_footer = {'KISS - Keep It Simple Stupid!'}
