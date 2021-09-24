let g:coc_global_extensions=[ 
  \ 'coc-json', 
  \ 'coc-pairs',
  \ 'coc-tsserver', 
  \ 'coc-eslint', 
  \ 'coc-prettier',
  \ 'coc-snippets',
  \ 'coc-jest',
  "\ 'coc-yaml', 
  "\ 'coc-omnisharp', 
  "\ 'coc-powershell',
  "\ 'coc-explorer',
  \ ]

" coc-explorer
"nmap <space>e :CocCommand explorer<CR>
"nmap <space>f :CocCommand explorer --preset floating<CR>
"autocmd BufEnter * if (winnr("$") == 1 && &filetype == 'coc-explorer') | q | endif

nnoremap <leader>ek * :<C-U>CocPrev<CR>
nnoremap <leader>ej * :<C-U>CocNext<CR>
" coc-jest
" -----------
" Run jest for current project
command! -nargs=0 Jest :call  CocAction('runCommand', 'jest.projectTest')
" Run jest for current file
command! -nargs=0 JestCurrent :call  CocAction('runCommand', 'jest.fileTest', ['%'])
" Run jest for current test
nnoremap <leader>te :call CocAction('runCommand', 'jest.singleTest')<CR>
" Init jest in current cwd, require global jest command exists
command! JestInit :call CocAction('runCommand', 'jest.init')

" Coc-snippets
" ---------------
" Use <C-l> for trigger snippet expand.
"imap <C-l> <Plug>(coc-snippets-expand)
"" Use <C-j> for select text for visual placeholder of snippet.
"vmap <C-j> <Plug>(coc-snippets-select)
"" Use <C-j> for jump to next placeholder, it's default of coc.nvim
"let g:coc_snippet_next = '<c-j>'
"" Use <C-k> for jump to previous placeholder, it's default of coc.nvim
"let g:coc_snippet_prev = '<c-k>'
"" Use <C-j> for both expand and jump (make expand higher priority.)
"imap <C-j> <Plug>(coc-snippets-expand-jump)
"" Make <tab> used for trigger completion, completion confirm, snippet expand and jump like VSCode.
"inoremap <silent><expr> <TAB>
      "\ pumvisible() ? coc#_select_confirm() :
      "\ coc#expandableOrJumpable() ? "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
      "\ <SID>check_back_space() ? "\<TAB>" :
      "\ coc#refresh()

"function! s:check_back_space() abort
  "let col = col('.') - 1
  "return !col || getline('.')[col - 1]  =~# '\s'
"endfunction
"let g:coc_snippet_next = '<tab>'
