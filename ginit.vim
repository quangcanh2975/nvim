if exists('g:fvim_loaded')
    " good old 'set guifont' compatibility
    set guifont=Iosevka:h16
    " Ctrl-ScrollWheel for zooming in/out
    nnoremap <silent> <C-ScrollWheelUp> :set guifont=+<CR>
    nnoremap <silent> <C-ScrollWheelDown> :set guifont=-<CR>
    nnoremap <A-CR> :call rpcnotify(1, 'ToggleFullScreen', 1)<CR>
endif