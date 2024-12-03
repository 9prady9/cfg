vim.cmd [[

highlight LineNr ctermbg=DarkGray ctermfg=DarkYellow

autocmd BufWritePre *.c :%s/\s\+$//e
autocmd BufWritePre *.cpp :%s/\s\+$//e
autocmd BufWritePre *.h :%s/\s\+$//e
autocmd BufWritePre *.cu :%s/\s\+$//e
autocmd BufWritePre *.cl :%s/\s\+$//e

function! Incr()
    let a = line('.') - line("'<")
    let c = virtcol("'<")
    if a > 0
        execute 'normal! '.c.'|'.a."\<C-a>"
    endif
    normal `<
endfunction
vnoremap <C-a> :call Incr()<CR>

au BufNewFile,BufRead *.cu set filetype=cuda
au BufNewFile,BufRead *.cuh set filetype=cuda
autocmd BufWritePre * :%s/\s\+$//e

function FormatBuffer()
  if &modified && !empty(findfile('.clang-format', expand('%:p:h') . ';'))
    let cursor_pos = getpos('.')
    :%!clang-format
    call setpos('.', cursor_pos)
  endif
endfunction

autocmd BufWritePre *.h,*.hpp,*.c,*.cpp :call FormatBuffer()

set foldmethod=syntax
set foldexpr=nvim_treesitter#foldexpr()

" Automatically save the fold state when leaving a buffer
autocmd BufWinLeave * mkview

" Automatically restore the fold state when opening a file
autocmd BufReadPost * silent! loadview
]]
