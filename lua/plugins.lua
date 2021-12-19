return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -------------------------- plugins -------------------------------------------
   -- theme
  use {
    "christianchiarulli/nvcode-color-schemes.vim",
    }
   
  use 'EdenEast/nightfox.nvim'
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
    run = ':TSUpdate'
  }

  --coc
  use {'neoclide/coc.nvim', branch = 'release'}

  use {
  'nvim-telescope/telescope.nvim',
  requires = { {'nvim-lua/plenary.nvim'} }
}
-- markdown preview
  use{
    'iamcco/markdown-preview.nvim'
  }
  use{
    "vim-airline/vim-airline",
    "vim-airline/vim-airline-themes"
  }
--terminal
  use {"akinsho/toggleterm.nvim"}
end)


