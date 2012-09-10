"This was pulled from StackOverflow answers from ZyX and Stu at:
"http://stackoverflow.com/questions/3619146/vimdiff-two-subroutines-in-same-file

let g:diffed_buffers=[]
function DiffText(a, b, diffed_buffers)
    execute 'tab split | enew'
    setlocal buftype=nowrite
    call add(a:diffed_buffers, bufnr('%'))
    call setline(1, split(a:a, "\n"))
    diffthis
    vnew
    setlocal buftype=nowrite
    call add(a:diffed_buffers, bufnr('%'))
    call setline(1, split(a:b, "\n"))
    diffthis
endfunction
function WipeOutDiffs(diffed_buffers)
    for buffer in a:diffed_buffers
        execute 'bwipeout! '.buffer
    endfor

    call remove (a:diffed_buffers, 0, -1)
endfunction
nnoremap <special> <F7> :call DiffText(@a, @b, g:diffed_buffers)
nnoremap <special> <F8> :call WipeOutDiffs(g:diffed_buffers) | let g:diffed_buffers=[]
