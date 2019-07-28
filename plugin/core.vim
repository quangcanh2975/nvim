set laststatus=2
" Allow buffers to stay on background
set hidden
" Better display for messages
set cmdheight=1
" better identing
set autoindent
" eager backspace
set backspace=indent,eol,start
set incsearch
" Smaller updatetime for CursorHold & CursorHoldI
set updatetime=300

" don't give |ins-completion-menu| messages.
set shortmess+=c

" always show signcolumns
set signcolumn=yes
" add removing of trailing spaces automatic on save
autocmd BufWritePre * %s/\s\+$//e

