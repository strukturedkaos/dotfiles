call pathogen#infect()
call pathogen#helptags()
set nocompatible               " be iMproved
 filetype off                   " required!

set number "display line numbers"
set ruler
set nowrap
"set cursorline
set autoindent
syntax enable

" Whitespace Stuff
set tabstop=2
set shiftwidth=2
set softtabstop=2
set backspace=indent,eol,start
set expandtab
set list listchars=tab:\ \ ,trail:·

" search
set incsearch
set hlsearch

" map no sp
nnoremap <leader><space> :nohlsearch<CR>

"disable arrow keys in insert mode
"imap <up> <nop>
"imap <down> <nop>
"imap <left> <nop>
"imap <right> <nop>
"disable arrow keys in normal mode
"map <up> <nop>
"map <down> <nop>
"map <left> <nop>
"map <right> <nop>

" save and check ruby syntax
command! Rubyw :w | :! ruby -cw %

filetype plugin indent on     " required!
filetype plugin on

autocmd! bufwritepost .vimrc source ~./vimrc

:imap jj <Esc>

" Solarized stuff
let g:solarized_termtrans = 1
set background=dark
colorscheme solarized
" autocmd vimenter * NERDTree

" Toggle NERDTree with Ctrl + n
map <C-n> :NERDTreeToggle<CR>

" Close vim if only window left open is NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
