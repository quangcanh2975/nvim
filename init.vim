call plug#begin('~/.local/share/nvim/plugged')
" Themes
Plug 'joshdick/onedark.vim'
Plug 'morhetz/gruvbox'
Plug 'arcticicestudio/nord-vim'
Plug 'trevordmiller/nova-vim'
Plug 'icymind/NeoSolarized'
Plug 'mhartington/oceanic-next'
" Statusline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" Tree navigation
Plug 'https://github.com/tpope/vim-vinegar.git'
" File switcher test <-> source
Plug 'https://github.com/tpope/vim-projectionist.git'
Plug 'airblade/vim-rooter'
" Git
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'mbbill/undotree'
Plug 'tpope/vim-surround'
" Fuzzy Everything
Plug 'Shougo/denite.nvim'
Plug 'tpope/vim-surround'
" LSP
Plug 'neoclide/coc.nvim', {'do': { -> coc#util#install()}}
" Langauges
Plug 'sheerun/vim-polyglot'
" Editor Config
Plug 'editorconfig/editorconfig-vim'
call plug#end()

" Entry point for nvim configuration
" here lies sourcing other files that contains speciffic configuration,
" and others utilities that is used.
" DONT fonrget to install https://github.com/junegunn/vim-plug
" Map leader

let mapleader = ","

" Better clipboard support on Windows/Magic?
set clipboard^=unnamed

let g:python3_host_prog='/home/sleepiejohn/.asdf/shims/python3'

nnoremap <silent> <cr> :noh<CR><CR>
" x now goes to black hole
nnoremap x "_x

command! OpenSettings call <SID>openSettings()
function! s:openSettings()
	if has('win64')
		e ~/AppData/Local/nvim
	else
		e ~/.config/nvim
	endif
endfunction


