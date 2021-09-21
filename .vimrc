syntax on

set nocompatible
filetype off

call plug#begin('~/.vim/plugged')
" vim themes
Plug 'morhetz/gruvbox'
Plug 'vim-airline/vim-airline'

" Git plugins
Plug 'tpope/vim-fugitive'                       " :Gblame
Plug 'tpope/vim-rhubarb'                        " :GBrowse  
Plug 'airblade/vim-gitgutter'                   " Show git diff of lines edited

" CoC plugin
Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'pangloss/vim-javascript'    " JavaScript support
Plug 'leafgarland/typescript-vim' " TypeScript syntax
Plug 'maxmellon/vim-jsx-pretty'   " JS and JSX syntax
Plug 'jparise/vim-graphql'        " GraphQL syntax
Plug 'styled-components/vim-styled-components'

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'           " Set up fzf and fzf.vim

" NERD tree
Plug 'scrooloose/nerdtree'
Plug 'xuyuanp/nerdtree-git-plugin'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

" Dev Icons
Plug 'ryanoasis/vim-devicons'

" switch between terminals
Plug 'christoomey/vim-tmux-navigator'

call plug#end()

filetype plugin indent on    " required

" Look and Feel settings
syntax enable
set wildmenu
set ttyfast
set lazyredraw
set updatetime=50
set hidden " Open other files if current one is not saved
set termguicolors
set scrolloff=8
set noshowmode
set completeopt=menuone,noinsert,noselect

" Use a line cursor within insert mode and a block cursor everywhere else
let &t_SI = "\e[6 q"
let &t_EI = "\e[2 q"

set nu
set relativenumber
set cursorline
set cursorcolumn
set ruler

set nowrap

" Enable Mouse mode in all modes
set mouse=a

" Settings for search
set ignorecase
set showmatch
set showcmd
set hlsearch
set incsearch

" Disable all bells and whistles
set noerrorbells visualbell t_vb=

" Tab Options
set shiftwidth=2
set tabstop=2
set softtabstop=2 " Number of spaces a tab counts when editing
set expandtab

" Indentation
set autoindent
set cindent
set smartindent

" Allow copy and paste from system clipboard
set clipboard=unnamed

" Spellcheck for features and markdown
au BufRead,BufNewFile *.md setlocal spell
au BufRead,BufNewFile *.md.erb setlocal spell
au BufRead,BufNewFile *.feature setlocal spellset nobackup

set nowritebackup
set noswapfile

set undodir=~/.vim/undodir
set undofile

" Set default encoding to utf-8
set encoding=utf-8
set termencoding=utf-8

" Needed for dev-icons plugin
set guifont=Hack\ Nerd\ Font\ 11
let g:airline_powerline_fonts = 1

" Space for linting errors
set signcolumn=yes

" Keeps your code tight
set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=lightgrey

" Give more space for displaying messages
set cmdheight=2

" Having longer updatetime (default is 4000 ms = 4s) leads to noticeable
" delays and poor user experience
set updatetime=50

" Install vim-plug if not found
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
        \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif

" Run PlugInstall if there are missing plugins
autocmd VimEnter * if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
      \| PlugInstall --sync | source $MYVIMRC
      \| endif

" This is required by vim-polyglot
colorscheme gruvbox
set background=dark

if executable('rg')
  let g:rg_derive_root='true'
endif

let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']
let mapleader = " "
let g:netrw_browse_split = 2
let g:netrw_banner = 0

let g:ctrlp_user_caching = 0
let g:netrw_winsize = 25

" Key maps

" Turn on/off highlight search
nnoremap <silent><C-c><C-c> :set hlsearch!<CR>

" Faster saving and exiting
nnoremap <silent><leader>w :w!<CR>
nnoremap <silent><leader>q :q!<CR>
nnoremap <silent><leader>x :x<CR>
" Open Vim configuration file for editing
nnoremap <silent><leader>2 :e ~/.vimrc<CR>
" Source Vim configuration file and install plugins
nnoremap <silent><leader>1 :source ~/.vimrc \| :PlugInstall<CR>

" Jump through split windows
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>
nnoremap <leader>u :UndotreeShow<CR>

nnoremap <leader>gs :G<CR>

" source custom configuration
source ~/.vim/options/nerdtree-options.vim
source ~/.vim/options/coc-options.vim
source ~/.vim/options/coc-extensions.vim
source ~/.vim/options/fzf-options.vim
