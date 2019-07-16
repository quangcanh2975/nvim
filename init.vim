filetype plugin indent on
let mapleader = ","
set clipboard^=unnamed
source $LOCALAPPDATA/nvim/editing.vim
source $LOCALAPPDATA/nvim/plugins.vim
source $LOCALAPPDATA/nvim/ui.vim
source $LOCALAPPDATA/nvim/plugins/undo_tree.vim
source $LOCALAPPDATA/nvim/plugins/lsp.vim
source $LOCALAPPDATA/nvim/plugins/denite.vim
source $LOCALAPPDATA/nvim/json.vim

let g:python3_host_prog='C:/Users/evang/AppData/Local/Programs/Python/Python37/python.exe'
let g:airline#extensions#coc#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':r.:e'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline_powerline_fonts = 1
" ------------- Keybindings -----------------
" clear search highlights after finish
nnoremap <silent> <cr> :noh<CR><CR>
" x now goes to black hole
nnoremap x "_x

