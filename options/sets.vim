" Look and Feel settings
set wildmenu
set ttyfast
set lazyredraw
set hidden " Open other files if current one is not saved
set scrolloff=8
set noshowmode
set completeopt=menuone,noinsert,noselect

set nu
set relativenumber

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

" Source Vim configuration file and install plugins
nnoremap <leader>1 :source ~/.vimrc \| :PlugInstall <CR>

" Open Vim configuration file for editing
nnoremap <leader>2 :e ~/.vimrc<CR>

" Jump through split windows
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>
nnoremap <leader>u :UndotreeShow<CR>

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

" Map for visual block
nnoremap <leader>ss <C-v>

" Map CR to insert empty line bellow but also move the cursor down
nnoremap <silent> <CR> :<C-u>call append(line(".")-1, repeat([""], v:count1))<CR>

" for developing configuration for vim 
nnoremap <leader>nu :w! \| :!cp -f options/* ~/.vim/options <CR>
