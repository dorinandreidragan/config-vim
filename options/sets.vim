" Look and Feel settings
set wildmenu
set ttyfast
set lazyredraw
set updatetime=50
set hidden " Open other files if current one is not saved
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
set t_vb=

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
" set clipboard=unnamed " this slows down the nvim startup

set nowritebackup
set noswapfile

" Set termcolors
let &t_8f = "\<Esc>[38:2:%lu:%lu:%lum"
let &t_8b = "\<Esc>[48:2:%lu:%lu:%lum"
set termguicolors
set term=xterm-256color

" nerdcommenter" Set default encoding to utf-8
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

let mapleader = " "

" Key maps

" Turn on/off highlight search
nnoremap <C-c><C-c> :set hlsearch!<CR>

" Faster saving and exiting
nnoremap <leader>w :w!<CR>
nnoremap <leader>qw :q!<CR>
nnoremap <leader>qa :qa!<CR>
nnoremap <leader>x :x<CR>

" Open Vim configuration file for editing
nnoremap <leader>2 :e ~/.vimrc<CR>

" Source Vim configuration file and install plugins
nnoremap <leader>1 :source ~/.vimrc \| :PlugInstall<CR>

" Jump through split windows
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>
nnoremap <leader>u :UndotreeShow<CR>

" Git status
nnoremap <leader>gs :G<CR>

" move line or visually selected block - alt+j/k
inoremap <A-j> <Esc>:m .+1<CR>==gi
inoremap <A-k> <Esc>:m .-2<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv

" move split panes to left/bottom/top/right
 nnoremap <A-h> <C-W>H
 nnoremap <A-j> <C-W>J
 nnoremap <A-k> <C-W>K
 nnoremap <A-l> <C-W>L

" for developing init.vim and options
nnoremap <leader>nu :w! \| :!cp options/* ~/.vim/options<CR>
