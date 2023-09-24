local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'


  -- UI Plugins
  use 'xiyaowong/transparent.nvim'
  use 'lewis6991/impatient.nvim'
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'nvim-tree/nvim-web-devicons', opt = true }
  }
  use 'lukas-reineke/indent-blankline.nvim'
  use {
    "folke/which-key.nvim",
    config = function()
      require("which-key").setup {
        -- your configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
      }
    end
  }
  use 'preservim/nerdtree'
  use 'preservim/tagbar'
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.0',
    requires = {
      {'nvim-lua/plenary.nvim'},
      { "nvim-tree/nvim-web-devicons", opt = true },
      { "kdheepak/lazygit.vim" }
    },
    config = function()
	require("telescope").load_extension("lazygit")
    end,
  }
  use "marko-cerovac/material.nvim"
  use "RRethy/vim-illuminate"
  use("onsails/lspkind-nvim") -- pictograms for lsp completion items
  use {
  'j-hui/fidget.nvim',
  tag = 'legacy',
  config = function()
    require("fidget").setup {
      -- options
    }
  end,
  }
  use {
    "weilbith/nvim-code-action-menu",
    cmd = 'CodeActionMenu',
  }
  use { 'glepnir/dashboard-nvim' }


  -- Editing Plugins
  use 'jiangmiao/auto-pairs'
  use {
      'nvim-treesitter/nvim-treesitter',
      run = function()
          local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
          ts_update()
      end,
  }
  use "nvim-tree/nvim-web-devicons"
  use {
    "folke/trouble.nvim",
    requires = "nvim-tree/nvim-web-devicons",
    config = function()
      require("trouble").setup {
        -- your configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
      }
    end
  }
  use 'neovim/nvim-lspconfig'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
  use 'hrsh7th/nvim-cmp' -- Autocompletion plugin
  use({
    "L3MON4D3/LuaSnip",
    run = "make install_jsregexp"
  })
  use 'saadparwaiz1/cmp_luasnip' -- Snippets source for nvim-cmp
  use 'rafamadriz/friendly-snippets'
  use {
    "ray-x/lsp_signature.nvim", -- Function signature hint view
  }
  use 'godlygeek/tabular'


  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrap then
    require('packer').sync()
  end
end)
