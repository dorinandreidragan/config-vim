set nocompatible
filetype off

call plug#begin('~/.vim/autoload/')

" Themes
" Plug 'rafi/awesome-vim-colorscheme'
" Plug 'tomasiser/vim-code-dark'
Plug 'romainl/Apprentice'
Plug 'vim-airline/vim-airline'

" Find plugins
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'           " Set up fzf and fzf.vim

" comments
Plug 'tpope/vim-commentary'

" Highlight other uses of the current word under the cursor
Plug 'rrethy/vim-illuminate'

" Dev Icons
Plug 'ryanoasis/vim-devicons'

" Find plugins
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'           " Set up fzf and fzf.vim

" CoC plugin
Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()

" change the cursor when in insert mode
let &t_SI = "\e[6 q"
let &t_EI = "\e[2 q"

" source ~/.vim/options/theme.vim
source ~/.vim/options/sets.vim
source ~/.vim/options/coc-options.vim
source ~/.vim/options/coc-extensions.vim
