" Vim-Plug
"
call plug#begin('~/.vim/plugged')

Plug 'Shougo/deoplete.nvim'
Plug 'zchee/deoplete-go', { 'do': 'make'}
Plug 'ternjs/tern_for_vim', { 'do': 'npm install' }

Plug 'mileszs/ack.vim'
Plug 'rking/ag.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-bundler'
Plug 'jvirtanen/vim-cocoapods'
Plug 'https://github.com/altercation/vim-colors-solarized.git'
Plug 'tomtom/tcomment_vim'
Plug 'kien/ctrlp.vim'
Plug 'xolox/vim-easytags'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-fugitive'
Plug 'fatih/vim-go'
Plug 'othree/html5.vim'
Plug 'claco/jasmine.vim'
Plug 'moll/vim-node'
Plug 'StanAngeloff/php.vim'
Plug 'tpope/vim-rails'
Plug 'hallison/vim-rdoc'
Plug 'mtth/scratch.vim'
Plug 'kana/vim-smartinput'
Plug 'tpope/vim-surround'
Plug 'keith/swift.vim'
Plug 'godlygeek/tabular'
Plug 'majutsushi/tagbar'
Plug 't-yuki/vim-go-coverlay'
Plug 'othree/javascript-libraries-syntax.vim'
Plug 'othree/jsdoc-syntax.vim'
Plug 'gavocanov/vim-js-indent'
Plug 'elzr/vim-json'
Plug 'mxw/vim-jsx'
Plug 'heavenshell/vim-jsdoc'
Plug 'othree/yajs.vim', { 'for': 'javascript' }
Plug 'xolox/vim-misc'
Plug 'itspriddle/vim-jquery'
Plug 'millermedeiros/vim-esformatter'
Plug 'scrooloose/nerdtree'
Plug 'Shougo/neosnippet-snippets'
Plug 'benekastah/neomake'
Plug 'benjie/neomake-local-eslint.vim'
Plug 'vim-scripts/mru.vim'
Plug 'easymotion/vim-easymotion'
Plug 'Shougo/neosnippet.vim'
Plug 'leafgarland/typescript-vim'
Plug 'vim-syntastic/syntastic'
Plug 'junegunn/fzf.vim'
call plug#end()

command! -bang -nargs=* Find call fzf#vim#grep('rg --column --line-number --no-heading --fixed-strings --ignore-case --no-ignore --hidden --follow --glob "!.git/*" --color "always" '.shellescape(<q-args>), 1, <bang>0)

source $HOME/.vim/general.vimrc
source $HOME/.vim/plugins.vimrc
source $HOME/.vim/line.vimrc
source $HOME/.vim/keys.vimrc
