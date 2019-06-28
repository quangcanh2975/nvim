call plug#begin('~/AppData/Local/nvim/plugged')

" Themes
Plug 'trevordmiller/nova-vim'
" Statusline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" Tree navigation
Plug 'https://github.com/tpope/vim-vinegar.git'
" File switcher test <-> source
Plug 'https://github.com/tpope/vim-projectionist.git'
" Git
Plug 'tpope/vim-fugitive'
Plug 'scrooloose/nerdtree'
Plug 'mbbill/undotree'
" Fuzzy Everything
Plug 'Shougo/denite.nvim'
" Wrap text
Plug 'tpope/vim-surround'
" LSP
Plug 'neoclide/coc.nvim', {'do': { -> coc#util#install()}}
" Langauges
Plug 'sheerun/vim-polyglot'
" Editor Config
Plug 'editorconfig/editorconfig-vim'
call plug#end()
