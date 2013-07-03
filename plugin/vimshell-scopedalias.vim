" Scoped alias for vimshell
" Version: 0.0.1
" Author : supermomonga (@supermomonga)

if exists('g:loaded_vimshell_scopedalias')
  finish
endif
let g:loaded_vimshell_scopedalias = 1

let s:save_cpo = &cpo
set cpo&vim


let &cpo = s:save_cpo
unlet s:save_cpo
