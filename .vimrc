set nocompatible
filetype off

call plug#begin('~/.vim/plugged')

" Themes
Plug 'tomasiser/vim-code-dark'
Plug 'vim-airline/vim-airline'

" gutter to show changes on a side
Plug 'airblade/vim-gitgutter'

" Git plugins
Plug 'tpope/vim-fugitive'                       " :Gblame
Plug 'tpope/vim-rhubarb'                        " :GBrowse  

" CoC plugin
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Find plugins
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'           " Set up fzf and fzf.vim
Plug 'jremmen/vim-ripgrep'

" NERD comments
Plug 'scrooloose/nerdcommenter'

" Dev Icons
Plug 'ryanoasis/vim-devicons'

" switch between terminals
Plug 'christoomey/vim-tmux-navigator'

" copy/paste
Plug 'christoomey/vim-system-copy'

" test
Plug 'janko-m/vim-test'

call plug#end()

autocmd VimEnter *
  \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \|   PlugInstall --sync | q
  \| endif

" source custom configuration
source ~/.vim/options/sets.vim
source ~/.vim/options/theme.vim
source ~/.vim/options/nerdcommenter.vim
source ~/.vim/options/coc-options.vim
source ~/.vim/options/coc-extensions.vim
source ~/.vim/options/fzf-options.vim
source ~/.vim/options/vim-test-options.vim

