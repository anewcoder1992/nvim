return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -------------------------- plugins -------------------------------------------
  use {
    "ellisonleao/gruvbox.nvim",
    requires = {"rktjmp/lush.nvim"}
    }
  use {
    "ryanoasis/vim-devicons",
    "tiagofumo/vim-nerdtree-syntax-highlight"
  }  
  -- nerd-tree
  use {
    'preservim/nerdtree',
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


