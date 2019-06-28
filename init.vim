filetype plugin on
let mapleader = ","
source ~/AppData/Local/nvim/plugins.vim
source ~/AppData/Local/nvim/ui.vim
source ~/AppData/Local/nvim/plugins/undo_tree.vim
source ~/AppData/Local/nvim/plugins/nerdtree.vim
source ~/AppData/Local/nvim/plugins/lsp.vim
source ~/AppData/Local/nvim/json.vim
source ~/AppData/Local/nvim/java.vim

let g:python3_host_prog='C:/Users/evang/AppData/Local/Programs/Python/Python37/python3.exe'
let g:airline#extensions#coc#enabled = 1
let g:airline_powerline_fonts = 1
set laststatus=2
"if hidden is not set, TextEdit might fail.
set hidden
" Some servers have issues with backup files, see #649
set nobackup
set nowritebackup
" Better display for messages
set cmdheight=1

" Smaller updatetime for CursorHold & CursorHoldI
set updatetime=300

" don't give |ins-completion-menu| messages.
set shortmess+=c

" always show signcolumns
set signcolumn=yes
" add removing of trailing spaces automatic on save
autocmd BufWritePre * :%s/\s\+$//e

" ------------- Keybindings -----------------
" clear search highlights after finish
nnoremap <silent> <cr> :noh<CR><CR>
" x now goes to black hole
nnoremap x "_x
