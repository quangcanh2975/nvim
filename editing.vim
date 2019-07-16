"set laststatus=2
"if hidden is not set, TextEdit might fail.
"set hidden
" Better display for messages
"set cmdheight=1
" better identing
"set autoindent
" eager backspace
"set backspace=indent,eol,start
"set incsearch
"set termguicolors
" Smaller updatetime for CursorHold & CursorHoldI
set updatetime=300

" don't give |ins-completion-menu| messages.
"set shortmess+=c

" always show signcolumns
"set signcolumn=yes
" add removing of trailing spaces automatic on save
autocmd BufWritePre * %s/\s\+$//e

