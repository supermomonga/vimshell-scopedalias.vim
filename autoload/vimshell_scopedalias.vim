let s:save_cpo = &cpo
set cpo&vim


" Default settings
let g:vimshell_scopedalias_allow_overwrite = get(g:, 'vimshell_scopedalias_allow_overwrite', 1)
let g:vimshell_scopedalias_current_rules = []
let g:vimshell_scopedalias_current_rules_dir = ''

" Add hooks to vimshell
autocmd FileType vimshell
      \  call vimshell#hook#add('preparse',  'vimshell_scopedalias_preparse',  'vimshell_scopedalias#preparse')
      \|  call vimshell#hook#add('chpwd',  'vimshell_scopedalias_chpwd',  'vimshell_scopedalias#chpwd')

if 1
  let g:vimshell_scopedalias_rules = [
        \ {
          \ 'rules': [{
            \ 'file': '.jruby',
            \ 'recursive': 1
          \ }],
          \ 'type': 'filter',
          \ 'match': '^(gem|rake)',
          \ 'replace': 'jruby -S $1'
        \ },
        \ {
          \ 'rules': [{
            \ 'file': '.jruby',
            \ 'recursive': 1
          \ }],
          \ 'type': 'filter',
          \ 'match': '^(gem|rake)',
          \ 'replace': 'jruby -S $1'
        \ }
        \ ]
end



function! vimshell_scopedalias#preparse(cmdline, context)
  " b:vimshell.current_dir
  return a:cmdline
endfunction

function! vimshell_scopedalias#chpwd(current_dir, context)
  
  " b:vimshell.current_dir
endfunction



let &cpo = s:save_cpo
unlet s:save_cpo
