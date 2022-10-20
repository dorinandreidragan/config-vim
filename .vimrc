set nocompatible
filetype off
set clipboard+=unnamedplus

call plug#begin('~/.config/autoload')

" Themes
Plug 'tomasiser/vim-code-dark'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ryanoasis/vim-devicons'

" Comments
Plug 'tpope/vim-commentary'

" Undotree
Plug 'mbbill/undotree'

" Tree
Plug 'preservim/nerdtree'

" Search
Plug 'junegunn/fzf.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }

" Git
Plug 'tpope/vim-fugitive'

call plug#end()

" Theme
colorscheme codedark
let g:airline_theme = 'codedark'
let g:airline#extensions#tabline#enabled = 1

" Look and Feel settings
set wildmenu
set ttyfast
set lazyredraw
set hidden " Open other files if current one is not saved
" set termguicolors
set scrolloff=8
set noshowmode
set completeopt=menuone,noinsert,noselect

set nu
set cursorline
set cursorcolumn

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

set nowritebackup
set noswapfile

" Set default encoding to utf-8
set encoding=utf-8
set termencoding=utf-8

" Space for linting errors
set signcolumn=yes

" Keeps your code tight
set colorcolumn=100
highlight ColorColumn ctermbg=0 guibg=lightgrey

" Give more space for displaying messages
set cmdheight=2

" Having longer updatetime (default is 4000 ms = 4s) leads to noticeable
" delays and poor user experience
set updatetime=50

" Change cursor in insert mode
" Use a line cursor within insert mode and a block cursor everywhere else.
"
" Reference chart of values:
"   Ps = 0  -> blinking block.
"   Ps = 1  -> blinking block (default).
"   Ps = 2  -> steady block.
"   Ps = 3  -> blinking underline.
"   Ps = 4  -> steady underline.
"   Ps = 5  -> blinking bar (xterm).
"   Ps = 6  -> steady bar (xterm).
let &t_SI = "\e[6 q"
let &t_EI = "\e[2 q"

let mapleader = " "

" Key maps

" Turn on/off highlight search
nnoremap <C-c><C-c> :set hlsearch!<CR>

" Faster saving and exiting
nnoremap <leader>w :w!<CR>
nnoremap <leader>qw :q!<CR>
nnoremap <leader>qa :qa!<CR>
nnoremap <leader>x :x<CR>

" Avoid overwriting the buffer when yank and paste
" First delete into the blackhole register and then do a normal put before
vnoremap p "_dP

" Display Undotree
nnoremap <leader>u :UndotreeShow<CR>

" NERD Tree
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

" Fuzzy finder
nnoremap <silent> <leader>ff :Files<CR>
nnoremap <silent> <leader>fb :Buffers<CR>
nnoremap <silent> <leader>/ :BLines<CR>
nnoremap <silent> <leader>fc :Commits<CR>
nnoremap <silent> <leader>fh :Helptags<CR>
let g:fzf_action = {
  \ 'ctrl-t': 'tab split' }

" Fuzzy search in files
nnoremap <silent> <Leader>fg :Ag<CR>

" Map for visual block
nnoremap <leader>ss <C-v>

" Map for NORMAL mode
imap jj <Esc>

" Map CR to insert empty line bellow but also move the cursor down
nnoremap <silent> <CR> :<C-u>call append(line(".")-1, repeat([""], v:count1))<CR>

