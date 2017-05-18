" ===================vundle config==================
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
" Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Plugin 'taglist.vim'
" Plugin 'majutsushi/tagbar'
" Plugin 'jlanzarotta/bufexplorer'
" Plugin 'winmanager'
" Plugin 'genutils'
" Plugin 'lookupfile'
" Plugin 'cscope.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'w0rp/ale'
" Plugin 'junegunn/fzf.vim'
" Plugin 'peaksea'
" Plugin 'altercation/vim-colors-solarized'
" Plugin 'wesgibbs/vim-irblack'
" Plugin 'vim-scripts/mayansmoke'
Plugin 'ctrlpvim/ctrlp.vim'
" Plugin 'chazy/cscope_maps'
" Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" Put your non-Plugin stuff after this line





"===================tutorial config=====================
"Set mapleader
let mapleader = ","


"====================my config=========================
" my own settings
set number
set mouse=a
set tabstop=4
set shiftwidth=2
set expandtab
set backspace=indent,eol,start
" colorscheme ir_black
" clipboard share via ssh
vmap "+y :!xclip -f -sel clip
map "+p :r!xclip -o -sel clip
