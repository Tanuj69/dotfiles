syntax enable  " enable syntax processing
set tabstop=2  " number of spaces per tab
set softtabstop=2  " number of spaces in tab when editing
set shiftwidth=2
set expandtab
set autoindent
set smartindent
set cindent
set showcmd		" show comand in bottom bar	
set nocompatible     " be iMproved, required
filetype off      " required
set cursorline	" highlight current line
filetype indent on " load indent files
set wildmenu    " visual autocomplete for command menu
set lazyredraw          " redraw only when we need to.
set showmatch           " highlight matching [{()}]
set incsearch           " search as characters are entered
set hlsearch            " highlight matches
set foldenable          " enable folding
set path+=**

" turn off search highlight
nnoremap <space> :nohlsearch<CR>
" move vertically by visual line
nnoremap j gj
nnoremap k gk
" move to beginning/end of line
nnoremap B ^
nnoremap E $

" $/^ doesn't do anything
nnoremap $ <nop>
nnoremap ^ <nop>
nnoremap gV `[v`]
inoremap jk <esc>

set backup
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set backupskip=/tmp/*,/private/tmp/*
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set writebackup

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'morhetz/gruvbox'
Plugin 'jiangmiao/auto-pairs'
call vundle#end()            " required
filetype plugin indent on    " required
colorscheme gruvbox
set background=dark
