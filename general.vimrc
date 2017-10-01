set encoding=utf-8
runtime macros/matchit.vim 
set clipboard=unnamed

set ignorecase incsearch hlsearch number nocompatible
filetype plugin indent on
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set hidden
set ruler

" These settings prevent vim from leaving swap files everywhere
set backupdir=/tmp/
set directory=/tmp

" set guifont=Sauce\ Code\ Powerline:h14
set guifont=Fira\ Code:h14
" set guifont=Source\ Code\ Pro:h14
if has("gui_macvim")
  " set guifont=Sauce\ Code\ Powerline\ Light:h16  
  set guifont=Fira\ Code:h16
  set macligatures
  " set guifont=Source\ Code\ Pro:h20
endif

" Solarized Theme Settings
if !has('gui_running')
  " This fixes an issue with tmux
  let g:solarized_visibility = "high" 
end
syntax enable
let g:solarized_contrast = "high"
let g:solarized_termtrans=1
let g:solarized_termcolors = 256
set background=dark
colorscheme solarized

if !has('gui_running')
  " This fixes an issue with tmux
end
let $NVIM_TUI_ENABLE_TRUE_COLOR=1
set termguicolors

autocmd FileType ruby set commentstring=#\ %s

" highlight OverLength ctermbg=darkred ctermfg=white guibg=#592929
" match OverLength /\%101v.\+/

set listchars=tab:▸\ ,eol:¬
