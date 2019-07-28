autocmd FileType denite call s:denite_my_settings()
function! s:denite_my_settings() abort
  nnoremap <silent><buffer><expr> <CR>
  \ denite#do_map('do_action')
  nnoremap <silent><buffer><expr> d
  \ denite#do_map('do_action', 'delete')
  nnoremap <silent><buffer><expr> p
  \ denite#do_map('do_action', 'preview')
  nnoremap <silent><buffer><expr> q
  \ denite#do_map('quit')
  nnoremap <silent><buffer><expr> i
  \ denite#do_map('open_filter_buffer')
  nnoremap <silent><buffer><expr> <Space>
  \ denite#do_map('toggle_select').'j'
endfunction

augroup deniteresize
  autocmd!
  autocmd VimResized,VimEnter * call denite#custom#option('default',
        \'winheight', winheight(0) / 2)
augroup end

call denite#custom#option('default', {
      \ 'prompt': '❯'
      \ })


call denite#custom#var('file/rec', 'command',
      \ ['fd', '-H', '--full-path', '--fixed-strings'])
call denite#custom#var('rg', 'command', ['rg'])
call denite#custom#var('rg', 'default_opts',
      \ ['--hidden', '--vimgrep', '--smart-case'])
call denite#custom#var('rg', 'recursive_opts', [])
call denite#custom#var('rg', 'pattern_opt', ['--regexp'])
call denite#custom#var('rg', 'separator', ['--'])
call denite#custom#var('rg', 'final_opts', [])

nnoremap <C-p> :<C-u>Denite file/rec -start-filter<CR>
nnoremap <leader>b :<C-u>Denite buffer<CR>
nnoremap <leader>W :<C-u>DeniteCursorWord grep:.<CR>
nnoremap <leader>S :<C-u>Denite grep:.<CR>
nnoremap <leader><Space>/ :<C-u>DeniteBufferDir grep:.<CR>
nnoremap <leader>d :<C-u>DeniteBufferDir file/rec -start-filter<CR>
nnoremap <leader>r :<C-u>Denite -resume -cursor-pos=+1<CR>
nnoremap <leader><C-r> :<C-u>Denite register:.<CR>
" references source from LanguageClient
nnoremap <leader>lr :<C-u>Denite references<CR>

hi link deniteMatchedChar Special
