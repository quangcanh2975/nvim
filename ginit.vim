if exists('g:fvim_loaded')
    " Ctrl-ScrollWheel for zooming in/out
    set guifont=Iosevka:h16
    nnoremap <silent> <C-ScrollWheelUp> :set guifont=+<CR>
    nnoremap <silent> <C-ScrollWheelDown> :set guifont=-<CR>
    nnoremap <A-CR> :call rpcnotify(1, 'ToggleFullScreen', 1)<CR>
endif

" Disable currently ugly popup menu that doenst receive customisation
GuiPopupmenu 0
" Disable gui tabline, use vim's plugin one
GuiTabline 0
call GuiWindowMaximized(1)

