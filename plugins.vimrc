" Deoplete
let g:deoplete#enable_at_startup = 1
if !exists('g:deoplete#omni#input_patterns')
  let g:deoplete#omni#input_patterns = {}
endif
" let g:deoplete#disable_auto_complete = 1
autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif

" deoplete tab-complete
"neocomplete#start_manual_complete()

" <Tab> completion:
" 1. If popup menu is visible, select and insert next item
" 2. Otherwise, if within a snippet, jump to next input
" 3. Otherwise, if preceding chars are whitespace, insert tab char
" 4. Otherwise, start manual autocomplete
imap <silent><expr><Tab> pumvisible() ? "\<C-n>"
	\ : (neosnippet#jumpable() ? "\<Plug>(neosnippet_jump)"
	\ : (<SID>is_whitespace() ? "\<Tab>"
	\ : "<C-x><C-o>"))

smap <silent><expr><Tab> pumvisible() ? "\<C-n>"
	\ : (neosnippet#jumpable() ? "\<Plug>(neosnippet_jump)"
	\ : (<SID>is_whitespace() ? "\<Tab>"
	\ : "<C-x><C-o>"))

inoremap <expr><S-Tab>  pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:is_whitespace() "{{{
	let col = col('.') - 1
	return ! col || getline('.')[col - 1] =~? '\s'
endfunction "}}}

" "
" " inoremap <silent><expr> <Tab> pumvisible() ? "\<C-n>" : "<C-x><C-o>"
" inoremap <silent><expr> <Tab> pumvisible() ? "\<C-n>" : deoplete#start_manual_complete()
" " ,<Tab> for regular tab
" inoremap <Leader><Tab> <Space><Space>

" <C-h>, <BS>: close popup and delete backword char.
" inoremap <expr><C-h> deoplete#smart_close_popup()."\<C-h>"
" inoremap <expr><BS> deoplete#smart_close_popup()."\<C-h>"

" omnifuncs
augroup omnifuncs
  autocmd!
  autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
  autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
  autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
  autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
  autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
augroup end
  
" tern
if exists('g:plugs["tern_for_vim"]')
  let g:tern_show_argument_hints = 'on_hold'
  let g:tern_show_signature_in_pum = 1
  autocmd FileType javascript setlocal omnifunc=tern#Complete
  autocmd FileType javascript nnoremap <silent> <buffer> gd :TernDef<CR>
endif

let g:easytags_async = 1
let g:easytags_suppress_ctags_warning = 1

"YouCompleteMe Config
let g:ycm_autoclose_preview_window_after_insertion=1

"Ultisnips Config
let g:UltiSnipsExpandTrigger="<c-j>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"

" Javascript
let g:used_javascript_libs = 'underscore,react,lodash,chai'
let g:jsx_ext_required = 0

" GoLang
let g:go_fmt_command = "goimports"

let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1

" Hacks to fix the syntax coloring problem with vim-go. See https://github.com/fatih/vim-go/issues/145.
set nocursorcolumn
"syntax sync minlines=256
set re=1
"set synmaxcol=128
"

" Neomake
" Look for local eslint and if not use globally installed one
let g:eslint_path = system('PATH=$(npm bin):$PATH && which eslint')
let g:neomake_javascript_enabled_makers = ['eslint']
let g:neomake_javascript_eslint_exe=substitute(g:eslint_path, '^\n*\s*\(.\{-}\)\n*\s*$', '\1', '')
autocmd! BufWritePost * Neomake



let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'
" Use The Silver Searcher, if it's available
if executable('ag')
  let g:ctrlp_user_command = 'ag %s -l --hidden -g ""'
  let g:ctrlp_use_caching = 0
else
  " Refresh Ctrl-P when vim gains focus or a file is written
  if has("autocmd")
    augroup AuCtrlPCmd
      autocmd AuCtrlPCmd FocusGained * call s:CtrlPFlush()
      autocmd AuCtrlPCmd BufWritePost * call s:CtrlPFlush()
      function! s:CtrlPFlush(...)
        if exists(":ClearCtrlPCache") == 2
          ClearCtrlPCache
        endif
      endfunction
    augroup END
  endif
endif
