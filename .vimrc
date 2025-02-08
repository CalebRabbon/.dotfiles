" --- Caleb Changes ---"
" Update with vim command :source .vimrc
" Switching the jk to escape in insert mode"
vnoremap jk <esc>
nnoremap jk <esc>
imap jk <esc>

" Set timeout length of combination of keystrokes to 90 ms 
" Change to longer time if you can't press jk in 90 ms
:set timeout timeoutlen=90

" Use space or / default to search for a word
nnoremap <space> /

" Set Alt+hjkl to move 10 lines. Some terminals interpret Alt as Esc
nnoremap <Esc>j 10j
nnoremap <Esc>k 10k

" Add line numbers"
set number

" Leader - is Spacebar
let mapleader = " "

" Turn on mouse
set mouse=a

" Make searching better
set gdefault      " Never have to type /g at the end of search / replace again
" case insensitive searching, unless specified
set ignorecase
set smartcase
set hlsearch
" Stop highlight after searching
nnoremap <silent> <leader>, :noh<cr> set incsearch
" show matching brackets when text indicator is over them
set showmatch

" Softtabs, 2 spaces
set tabstop=3
set shiftwidth=3
" Uses spaces and not tab
set expandtab
" Be smart with tabs
set smarttab
syntax on
set autoindent
set smartindent
set nowrap

" Now you can undo when you wq out of a file. Make sure you have a $HOME/undo
" directory
set undofile
set undodir=~/.vim/undo

" --- Below is the installation of the Vundle (Vim Bundle) package manager which installs plugins ---"
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Plugin for using vim and tmux with the same hotkeys 
Plugin 'christoomey/vim-tmux-navigator'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
" filetype plugin on
"
" Brief help - Commands are ran in the vim command line
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
