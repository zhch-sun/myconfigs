" clipboard is very slow
set clipboard=exclude:.*

"===================vundle config==================
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
Plugin 'majutsushi/tagbar'
Plugin 'jlanzarotta/bufexplorer'
Plugin 'winmanager'
Plugin 'genutils'
Plugin 'lookupfile'
" Plugin 'cscope.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'w0rp/ale'
Plugin 'junegunn/fzf.vim'
Plugin 'peaksea'
Plugin 'altercation/vim-colors-solarized'
Plugin 'wesgibbs/vim-irblack'
Plugin 'vim-scripts/mayansmoke'
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


" about fast vimrc editing
function! SwitchToBuf(filename)
    "let fullfn = substitute(a:filename, "^\\~/", $HOME . "/", "")
    " find in current tab
    let bufwinnr = bufwinnr(a:filename)
    if bufwinnr != -1
        exec bufwinnr . "wincmd w"
        return
    else
        " find in each tab
        tabfirst
        let tab = 1
        while tab <= tabpagenr("$")
            let bufwinnr = bufwinnr(a:filename)
            if bufwinnr != -1
                exec "normal " . tab . "gt"
                exec bufwinnr . "wincmd w"
                return
            endif
            tabnext
            let tab = tab + 1
        endwhile
        " not exist, new tab
        exec "tabnew " . a:filename
    endif
endfunction

"Fasloading of the .vimrc
map <silent> <leader>ss :source ~/.vimrc<cr>
"Fast editing of .vimrc
map <silent> <leader>ee :call SwitchToBuf("~/.vimrc")<cr>
"When .vimrc is edited, reload it
autocmd! bufwritepost .vimrc source ~/.vimrc

" project path
set path=.,/usr/include,,~/Download/vim/src/** 


"====================my config=========================
" my own settings
set number
set mouse=a
" colorscheme solarized8_dark
set tabstop=4
set backspace=indent,eol,start
set background=dark
colorscheme peaksea
" colorscheme ir_black
" colorscheme desert

" tagbar
nnoremap <silent> <F9> :TagbarToggle<CR>

" netrw setting
let g:netrw_winsize = 30
nmap <silent> <leader>fe :Sexplore!<cr>

" buf explorer
let g:bufExplorerDefaultHelp=0       " Do not show default help.
let g:bufExplorerShowRelativePath=1  " Show relative paths.
let g:bufExplorerSortBy='mru'        " Sort by most recently used.
let g:bufExplorerSplitRight=0        " Split left.
let g:bufExplorerSplitVertical=1     " Split vertically.
let g:bufExplorerSplitVertSize = 30  " Split width
let g:bufExplorerUseCurrentWindow=1  " Open in new window.
autocmd BufWinEnter \[Buf\ List\] setl nonumber 

" winManager setting
" let g:winManagerWindowLayout = "BufExplorer,FileExplorer|TagList"
" let g:winManagerWidth = 30
" let g:defaultExplorer = 0
" nmap <C-W><C-F> :FirstExplorerWindow<cr>
" nmap <C-W><C-B> :BottomExplorerWindow<cr>
" nmap <silent> <leader>wm :WMToggle<cr> 

