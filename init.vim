" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.local/share/nvim/plugged') " plugins in local folder
"plug#begin Color status bar
Plug 'itchyny/lightline.vim'
" Search with fzf"
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
" Make sure you use single quotes

" Theme
" Plug 'morhetz/gruvbox'
" Plug 'ayu-theme/ayu-vim' " or other package manager
" Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'crusoexia/vim-monokai'
" Plug 'NLKNguyen/papercolor-theme'

" Some Git stuff
" Plug 'tpope/vim-fugitive'
" Plug 'airblade/vim-gitgutter'
" Plug 'APZelos/blamer.nvim'

" Prettier
Plug 'prettier/vim-prettier', {
	\ 'do': 'yarn install',
\ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'yaml', 'html'] }

" Use release branch
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Moving around easier
Plug 'easymotion/vim-easymotion'

" On-demand loadingESLint
Plug 'scrooloose/nerdtree'


" emmet
Plug 'mattn/emmet-vim'

"Comment"
Plug 'scrooloose/nerdcommenter'
" Diferent color for parathesis
"Plug 'frazrepo/vim-rainbow'

" Plug 'alpertuna/vim-header'
Plug 'nathanaelkane/vim-indent-guides'

" Initialize plugin system
call plug#end()
inoremap <expr> <C-j> pumvisible() ? "\<C-n>" : "\<C-j>"
inoremap <expr> <C-k> pumvisible() ? "\<C-p>" : "\<C-k>"
"let g:user_emmet_expandabbr_key = '<C-a>,'
syntax on
" Add new blank line above and below current position
" nnoremap <leader>j :set paste<CR>m`o<Esc>``:set nopaste<CR>
" nnoremap <leader>k :set paste<CR>m`O<Esc>``:set nopaste<CR>

nnoremap <C-j> :set paste<CR>m`o<Esc>``:set nopaste<CR>
nnoremap <C-k> :set paste<CR>m`O<Esc>``:set nopaste<CR>

" Auto remove trailing spaces
" autocmd BufWritePre * %s/\s\+$//e

" change theme
" papercolor-theme
" set t_Co=256   " This is may or may not needed.
" set termguicolors     " enable true colors support
" set background=light
" colorscheme PaperColor

" gruvbox theme
" let $NVIM_TUI_ENABLE_TRUE_COLOR=1
" colorscheme gruvbox
" let g:gruvbox_contrast_light= 'hard'
" set bg=light
" let g:gruvbox_contrast_dark = 'light'
" set bg=dark

" ayu theme
" set termguicolors     " enable true colors support
" let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
" let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
" let ayucolor="light"  " for light version of theme
" let ayucolor="mirage" " for mirage version of theme
" let ayucolor="dark"   " for dark version of theme
" colorscheme ayu

" theme monokai
" set termguicolors
syntax on
colorscheme monokai

" theme dracula
" syntax enable
" colorscheme dracula
" let g:javascript_plugin_jsdoc = 1

" Map key bindings
" Jump window
nmap <Leader>ww <Plug>(choosewin)
nnoremap <Leader>qq :bd<CR>

map <C-b> :NERDTreeToggle<CR>

" Map leader key
let mapleader = "," " map leader key to ,
let g:mapleader = ","

" Switching between tab
map  <C-l> :tabn<CR>
map  <C-h> :tabp<CR>
map  <C-n> :tabnew<CR>
" Fast saving
nmap <leader>w :w!<cr>
" Quick exiting
nmap <leader>q :q<cr>
map fj <C-w>j
map fl <C-l>l
map fh <C-h>h
map fk <C-k>k
" Map Esc to jj
:imap jj <Esc>

" Hide highlight
map <silent> <leader><cr> :noh<cr>

" Move by word
nnoremap L l
nnoremap H h
nnoremap l w
nnoremap h b

" Config for copy and paste
" delete without yanking
nnoremap <leader>d "_d
vnoremap <leader>d "_d

" replace currently selected text with default register
" without yanking it
vnoremap <leader>p "_dP

" Move between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-l> <C-W>l
map <C-h> <C-W>h

" Set hight light current line
set cursorline
"Set searching options
set ignorecase
set smartcase
" Set line number
set nu

"Set unicode characters
set encoding=utf-8
" Use mouse
if has('mouse')
	set mouse=a
endif

" auto reload when have changes
" trigger `autoread` when files changes on disk
set autoread
autocmd FocusGained,BufEnter,CursorHold,CursorHoldI * if mode() != 'c' | checktime | endif
" notification after file change
autocmd FileChangedShellPost *
	\ echohl WarningMsg | echo "File changed on disk. Buffer reloaded." | echohl None
set autowrite

set autoindent
set si "smart indent

set nobackup
set nowb
set noswapfile
set backupdir=~/tmp,/tmp
set backupcopy=yes
set backupskip=/tmp/*,$TMPDIR/*,$TMP/*,$TEMP/*
set directory=/tmp

" set nowrap
"set clipboard
set clipboard=unnamedplus
" coc.nvim
" " if hidden is not set, TextEdit might fail.
set hidden

" Some servers have issues with backup files, see #649
set nobackup
set nowritebackup

" Better display for messages
set cmdheight=2

" You will have bad experience for diagnostic messages when it's default 4000.
set updatetime=300

" don't give |ins-completion-menu| messages.
set shortmess+=c

" always show signcolumns
set signcolumn=yes

" Use tab for trigger completion with characters ahead and navigate.
" Use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.
inoremap <silent><expr> <TAB>
			\ pumvisible() ? "\<C-n>" :
			\ <SID>check_back_space() ? "\<TAB>" :
			\ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
	let col = col('.') - 1
	return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current position.
" Coc only does snippet and additional edit on confirm.
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
" Or use `complete_info` if your vim support it, like:
" inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"

" Use `[g` and `]g` to navigate diagnostics
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
	if (index(['vim','help'], &filetype) >= 0)
		execute 'h '.expand('<cword>')
	else
		call CocAction('doHover')
	endif
endfunction

" Highlight symbol under cursor on CursorHold
autocmd CursorHold * silent call CocActionAsync('highlight')

" Remap for rename current word
nmap <leader>rn <Plug>(coc-rename)

" Coc prettier
" comman! -nargs=0 Prettier :CocCommand prettier.formatFile
" Remap for format selected region
" nnoremap <Leader>p :call CocAction('format')<CR>


augroup mygroup
	autocmd!
	" Setup formatexpr specified filetype(s).
	autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
	" Update signature help on jump placeholder
	autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Remap for do codeAction of selected region, ex: `<leader>aap` for current paragraph
" xmap <leader>a  <Plug>(coc-codeaction-selected)
" nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap for do codeAction of current line
nmap <leader>ac  <Plug>(coc-codeaction)
" Fix autofix prmesu2.zipoblem of current line
nmap <leader>qf  <Plug>(coc-fix-current)

" Create mappings for function text object, requires document symbols feature of languageserver.
xmap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap if <Plug>(coc-funcobj-i)
omap af <Plug>(coc-funcobj-a)

" Use <C-d> for select selections ranges, needs server support, like: coc-tsserver, coc-python
nmap <silent> <C-d> <Plug>(coc-range-select)
xmap <silent> <C-d> <Plug>(coc-range-select)

" Use `:Format` to format current buffer
command! -nargs=0 Format :call CocAction('format')

" Use `:Fold` to fold current buffer
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" use `:OR` for organize import of current buffer
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

" Add status line support, for integration with other plugin, checkout `:h coc-status`
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" Using CocList
" Show all diagnostics
nnoremap <silent> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions
nnoremap <silent> <space>e  :<C-u>CocList extensions<cr>
" Show commands
nnoremap <silent> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document
nnoremap <silent> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols
nnoremap <silent> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list
nnoremap <silent> <space>p  :<C-u>CocListResume<CR>

" Coc auto pairs
autocmd FileType tex let b:coc_pairs = [["$", "$"]]
" Add intent after enter
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm() : "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" Vim easymotion
nmap <silent> ;; <Plug>(easymotion-overwin-f)
nmap <silent> ;l <Plug>(easymotion-overwin-line)

"Set up NERDTree
let NERDTreeShowHidden=1
let NERDTreeIgnore=['\.DS_Store', '\~$', '\.swp', '\.git','venv']

"Auto start NERDTree"
" autocmd StdinReadPre * let s:std_in=1

" autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
" Find file in nerdtree
nmap ,n :NERDTreeFind<CR>
"Comment config"
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1

"Show file name when open
set laststatus=2
set statusline+=%F

" Set tab width"
set shiftwidth=2
set tabstop=2

" let g:prettier#config#parser = 'babylon' " this make error failed to parse
" buffer
" let g:prettier#config#print_width = 150
" let g:prettier#config#trailing_comma = 'none'
" let g:prettier#config#arrowParens = 'avoid'

"fzf"

augroup fzf
  autocmd!
augroup END

" Key mapping

" History of file opened
nnoremap <leader>h :History<cr>

" Buffers opens
nnoremap <leader>b :Buffers<cr>

" Files recursively from pwd
nnoremap <leader>f :Files<cr>

" Ex commands
nnoremap <leader>c :Commands<cr>
" Ex command history. <C-e> to modify the command
nnoremap <leader>: :History:<cr>

" nnoremap <leader>a :Rgi<space>
nnoremap <leader>A :exec "Rgi ".expand("<cword>")<cr>

"" --column: Show column number
" --line-number: Show line number
" --no-heading: Do not show file headings in results
" --fixed-strings: Search term as a literal string
" --ignore-case: Case insensitive search
" --no-ignore: Do not respect .gitignore, etc...
" --hidden: Search hidden files and folders
" --follow: Follow symlinks
" --glob: Additional conditions for search (in this case ignore everything in the .git/ folder)
"
" ripgrep key binds "
nnoremap <leader>g :Rg<Cr>
" ripgrep command to search in multiple files
autocmd fzf VimEnter * command! -nargs=* Rg
  \ call fzf#vim#grep(
  \   'rg --column --line-number --no-heading --fixed-strings --ignore-case --hidden --follow --glob "!.git/*" --color "always" '.shellescape(<q-args>), 1,
  \   <bang>0 ? fzf#vim#with_preview('up:60%')
  \           : fzf#vim#with_preview('right:50%:hidden', '?'),
  \   <bang>0)

" ripgrep - ignore the files defined in ignore files (.gitignore...)
autocmd fzf VimEnter * command! -nargs=* Rgi
  \ call fzf#vim#grep(
  \   'rg --column --line-number --no-heading --fixed-strings --ignore-case --hidden --follow --glob "!.git/*" --color "always" '.shellescape(<q-args>), 1,
  \   <bang>0 ? fzf#vim#with_preview('up:60%')
  \           : fzf#vim#with_preview('right:50%:hidden', '?'),
  \   <bang>0)

" ripgrep - ignore the files defined in ignore files (.gitignore...) and doesn't ignore case
autocmd fzf VimEnter * command! -nargs=* Rgic
  \ call fzf#vim#grep(
  \   'rg --column --line-number --no-heading --fixed-strings --hidden --follow --glob "!.git/*" --color "always" '.shellescape(<q-args>), 1,
  \   <bang>0 ? fzf#vim#with_preview('up:60%')
  \           : fzf#vim#with_preview('right:50%:hidden', '?'),
  \   <bang>0)

" ripgrep - ignore the files defined in ignore files (.gitignore...) and doesn't ignore case
autocmd fzf VimEnter * command! -nargs=* Rgir
  \ call fzf#vim#grep(
  \   'rg --column --line-number --no-heading --hidden --follow --glob "!.git/*" --color "always" '.shellescape(<q-args>), 1,
  \   <bang>0 ? fzf#vim#with_preview('up:60%')
  \           : fzf#vim#with_preview('right:50%:hidden', '?'),
  \   <bang>0)

" ripgrep - ignore the files defined in ignore files (.gitignore...) and doesn't ignore case and activate regex search
autocmd fzf VimEnter * command! -nargs=* Rgr
  \ call fzf#vim#grep(
  \   'rg --column --line-number --no-heading --hidden --follow --glob "!.git/*" --color "always" '.shellescape(<q-args>), 1,
  \   <bang>0 ? fzf#vim#with_preview('up:60%')
  \           : fzf#vim#with_preview('right:50%:hidden', '?'),
  \   <bang>0)

set grepprg=rg\ --vimgrep

" Customize fzf colors to match your color scheme
let g:fzf_colors =
\ { 'fg':      ['fg', 'Normal'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'hl':      ['fg', 'Comment'],
  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
  \ 'hl+':     ['fg', 'Statement'],
  \ 'info':    ['fg', 'PreProc'],
  \ 'border':  ['fg', 'Ignore'],
  \ 'prompt':  ['fg', 'Conditional'],
  \ 'pointer': ['fg', 'Exception'],
  \ 'marker':  ['fg', 'Keyword'],
  \ 'spinner': ['fg', 'Label'],
  \ 'header':  ['fg', 'Comment'] }

let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-h': 'split',
  \ 'ctrl-v': 'vsplit'
  \ }

" NerdCommenter
let g:NERDCustomDelimiters={
	\ 'javascript': { 'left': '//', 'right': '', 'leftAlt': '{/*', 'rightAlt': '*/}' },
\}

" Emmet config
let g:user_emmet_leader_key=','

" vim-rain-bow
" let g:rainbow_active = 1

" NOTES
" Coc extensions used: coc-java coc-tsserver coc-pairs
"
"
" floating window nvim
function! OpenFloatTerm()
  let height = float2nr((&lines - 2) / 1.5)
  let row = float2nr((&lines - height) / 2)
  let width = float2nr(&columns / 1.5)
  let col = float2nr((&columns - width) / 2)
  " Border Window
  let border_opts = {
    \ 'relative': 'editor',
    \ 'row': row - 1,
    \ 'col': col - 2,
    \ 'width': width + 4,
    \ 'height': height + 2,
    \ 'style': 'minimal'
    \ }
  let border_buf = nvim_create_buf(v:false, v:true)
  let s:border_win = nvim_open_win(border_buf, v:true, border_opts)
  " Main Window
  let opts = {
    \ 'relative': 'editor',
    \ 'row': row,
    \ 'col': col,
    \ 'width': width,
    \ 'height': height,
    \ 'style': 'minimal'
    \ }
  let buf = nvim_create_buf(v:false, v:true)
  let win = nvim_open_win(buf, v:true, opts)
  terminal
  startinsert
  " Hook up TermClose event to close both terminal and border windows
  autocmd TermClose * ++once :q | call nvim_win_close(s:border_win, v:true)
endfunction


" Pythonx setting
if has('python')
  set pyx=2
	set pyxversion=2
elseif has('python3')
  set pyx=3
	set pyxversion=3
endif


" generate doc comment template
map <LocalLeader>/ :call GenerateDOCComment()<cr>

function! GenerateDOCComment()
  let l    = line('.')
  let i    = indent(l)
  let pre  = repeat(' ',i)
  let text = getline(l)
  let params   = matchstr(text,'([^)]*)')
  let paramPat = '\([$a-zA-Z_0-9]\+\)[, ]*\(.*\)'
  echomsg params
  let vars = []
  let m    = ' '
  let ml = matchlist(params,paramPat)
  while ml!=[]
    let [_,var;rest]= ml
    let vars += [pre.' * @param '.var]
    let ml = matchlist(rest,paramPat,0)
  endwhile
  let comment = [pre.'/**',pre.' * '] + vars + [pre.' */']
  call append(l-1,comment)
  call cursor(l+1,i+3)
endfunction

" Open terminal
nnoremap <Leader>at :call OpenFloatTerm()<CR>
" Open tig, yes TIG, A FLOATING TIGGGG!!!!!!
nnoremap <Leader>ag :call OpenFloatTerm('"tig"')<CR>

" Fix prettier failed buffer
" let g:prettier#config#single_quote = 'true'
" let g:prettier#config#trailing_comma = 'all'

" Git fugitive
nmap ghs <Plug>(GitGutterStageHunk)
nmap ghu <Plug>(GitGutterUndoHunk)
nmap ghp <Plug>(GitGutterPreviewHunk)

" Add file header
" let g:header_field_author = 'Nguyen Quang Canh'
" let g:header_field_author_email = 'canhqn@vn.innova.com'
" map <F4> :AddHeader<CR>
" let g:header_auto_add_header = 0

" PHP config
" Remember to install intelephense by npm
if executable('intelephense')
	augroup LspPHPIntelephense
		au!
		au User lsp_setup call lsp#register_server({
				\ 'name': 'intelephense',
				\ 'cmd': {server_info->[&shell, &shellcmdflag, 'intelephense --stdio']},
				\ 'whitelist': ['php'],
				\ 'initialization_options': {'storagePath': '/opt/homebrew/bin/intelephense'},
				\ 'workspace_config': {
				\   'intelephense': {
				\     'files': {
				\       'maxSize': 1000000,
				\       'associations': ['*.php', '*.phtml'],
				\       'exclude': [],
				\     },
				\     'completion': {
				\       'insertUseDeclaration': v:true,
				\       'fullyQualifyGlobalConstantsAndFunctions': v:false,
				\       'triggerParameterHints': v:true,
				\       'maxItems': 100,
				\     },
				\     'format': {
				\       'enable': v:false
				\     },
				\   },
				\ }
				\})
	augroup END
endif

" Formatting selected code.
" xmap <leader>f  <Plug>(coc-format-selected)
" nmap <leader>f  <Plug>(coc-format-selected)

" indent
let g:indent_guides_enable_on_vim_startup = 1
