"set runtimepath+=~/dotfiles/vim/

set nocompatible               " be iMproved
filetype off                   " required!

call plug#begin('~/.vim_plugged')
" theme
Plug 'morhetz/gruvbox'
Plug 'altercation/vim-colors-solarized'

" airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" tags
Plug 'joe-skb7/cscope-maps'
Plug 'preservim/tagbar'

" search
Plug 'rking/ag.vim'
Plug 'mileszs/ack.vim'

" navigating
Plug 'scrooloose/nerdtree'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'junegunn/fzf.vim'

" man pages
Plug 'andreyugolnik/manpageview'

" git
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'

" Languages specific
Plug 'elzr/vim-json'
"Plug 'davidhalter/jedi-vim'
Plug 'vim-jp/cpp-vim'

" Autoident
Plug 'tpope/vim-sleuth'

" OSC52
Plug 'ojroques/vim-oscyank', {'branch': 'main'}

" copilot
Plug 'github/copilot.vim'

" LSP
"Plug 'prabirshrestha/async.vim'
"Plug 'prabirshrestha/vim-lsp'

" autocomplete
"Plug 'ajh17/vimcompletesme'

call plug#end()

set ttyfast
set laststatus=2
set t_Co=256
set cscopetag
set incsearch
set hidden
set cursorline
set scrolloff=10
set autoindent
set mouse=a
set clipboard=unnamedplus

set ignorecase                 "set search to be case insensitive
set smartcase                  "unless you typed uppercase letters in your query

" ctags optimization
" set autochdir
set tags=tags;

filetype plugin indent on     " required!
au FileType javascript  call FT_javascript()
au FileType json        call FT_javascript()
au FileType html        call FT_html()
au FileType c           call FT_c()

function FT_javascript()
  setlocal tabstop=2
  setlocal softtabstop=2
  setlocal shiftwidth=2
  setlocal expandtab
endfunction

function FT_html()
  setlocal tabstop=4
  setlocal softtabstop=4
  setlocal shiftwidth=4
  setlocal expandtab
endfunction

function FT_c()
  set cino=g0:0t0(0
  set noet
endfunction

syntax on

set background=dark
colorscheme gruvbox
