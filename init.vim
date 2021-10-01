set nocompatible
filetype off

call plug#begin('~/.config/nvim/autoload')

" Themes
Plug 'tomasiser/vim-code-dark'
Plug 'hoob3rt/lualine.nvim'

" CoC plugin
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Telescope
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzy-native.nvim'

" comments
Plug 'tpope/vim-commentary'

" Hihglight other uses of the current word under the cursor
Plug 'rrethy/vim-illuminate'

"" Dev Icons
Plug 'kyazdani42/nvim-web-devicons'

call plug#end()

" source custom configuration
source ~/.config/nvim/options/sets.vim
source ~/.config/nvim/options/theme.vim
source ~/.config/nvim/options/lualine.vim
source ~/.config/nvim/options/telescope.vim
source ~/.config/nvim/options/coc-options.vim
source ~/.config/nvim/options/coc-extensions.vim
