return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -------------------------- plugins -------------------------------------------
   -- theme
  use {
     'rebelot/kanagawa.nvim',
    'EdenEast/nightfox.nvim',
     'ful1e5/onedark.nvim'
    }
  -- file expoler
  use {
    'kyazdani42/nvim-tree.lua',
    requires = {
      'kyazdani42/nvim-web-devicons', -- optional, for file icon
    },
    config = function() require'nvim-tree'.setup {
      view={
        auto_resize=true,
      }
    } end
}
  use {
  'romgrk/barbar.nvim',
  requires = {'kyazdani42/nvim-web-devicons'}
  }
  -- treesitter
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate',
     config = function() require('plugin-config.treesitter')
     end 
   }


  --coc
  use {'neoclide/coc.nvim', branch = 'release'}

  use {
  'nvim-telescope/telescope.nvim',
  requires = { {'nvim-lua/plenary.nvim'} }
}
use {'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }
-- markdown preview
  use{
    'iamcco/markdown-preview.nvim'
  }
  use{
    "vim-airline/vim-airline",
    "vim-airline/vim-airline-themes"
  }
--terminal
  use 'voldikss/vim-floaterm'
  -- styled-components
  use 'styled-components/vim-styled-components'

      -- mulit cursor
    use {'mg979/vim-visual-multi', event = "InsertEnter", branch = 'master'}

  -- indentline
  use{
        'lukas-reineke/indent-blankline.nvim',
        config = function() require("plugin-config.indent") end,
        event = 'BufRead'
    }
    -- git information
    use {
        'lewis6991/gitsigns.nvim',
        requires = {'nvim-lua/plenary.nvim'},
        event = "BufRead",
        config = function() require("plugin-config.gitsign") end
    }
    use 'lfv89/vim-interestingwords'
    use 'rust-lang/rust.vim'
end)


