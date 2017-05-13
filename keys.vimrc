let mapleader=','
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l
map <C-e> :MRU<CR>

" List Navigation
map <expr> <C-N> (empty(getloclist(1))  ? ":cn" : ":lnext")."\n"
map <expr> <C-P> (empty(getloclist(0))  ? ":cp" : ":lp")."\n"

nmap <Leader>f :LAg<CR>
nmap <Leader>F :LAg 

cnoremap %% <C-R>=expand('%:h').'/'<cr>
map <leader>ew :e %%
map <leader>es :sp %%
map <leader>ev :vsp %%
map <leader>et :tabe %%

map <leader>ct :tabclose<CR>
map <leader>st :tab split<CR>

:nmap <leader>. :CtrlPTag<CR>
let g:ctrlp_map = '<leader>t'

:nmap \e :NERDTreeToggle<CR>
:nmap \t :TagbarToggle<CR>

nmap <Leader>a= :Tabularize /=<CR>
nmap <Leader>a{ :Tabularize /{<CR>
nmap <Leader>a: :Tabularize /:\zs<CR>
nmap <Leader>a> :Tabularize /=><CR>
xmap \\ :TComment<CR>
nmap \\ :TComment<CR>

" neomake
nmap <Leader><Space>o :lopen<CR>      " open location window
nmap <Leader><Space>c :lclose<CR>     " close location window
nmap <Leader><Space>, :ll<CR>         " go to current error/warning
nmap <Leader><Space>n :lnext<CR>      " next error/warning
nmap <Leader><Space>p :lprev<CR>      " previous error/warning

" Go
au FileType go nmap <leader>b <Plug>(go-build)
au FileType go nmap <leader>bt <Plug>(go-test-compile)
au FileType go nmap <Leader>gd <Plug>(go-doc)
au FileType go nmap <Leader>gv <Plug>(go-doc-vertical)
au FileType go nmap <Leader>i <Plug>(go-info)
au FileType go nmap <leader>c <Plug>(go-callers)
au FileType go nmap <leader>r <Plug>(go-referrers)
au FileType go nmap <leader>d :GoDecls<CR>

" Javascript
au FileType javascript nmap <leader>jd :JsDoc<CR>
