" Vundle
set nocompatible              " be iMproved, required
filetype off                  " required
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
" call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" nerdtree
Plugin 'scrooloose/nerdtree'

" Vim flake
Plugin 'nvie/vim-flake8'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" color
colorscheme monokai

:map <F2> :w\|!python %<CR>
set number
set expandtab
set tabstop=8
set shiftwidth=4
set softtabstop=4
set autoindent

let Tlist_Ctags_Cmd='/usr/bin/ctags'

call pathogen#infect()
syntax on
syntax enable
filetype plugin on

"overlength
highlight OverLength ctermbg=red ctermfg=white guibg=#592929 
match OverLength /\%81v.\+/

set ofu=syntaxcomplete#Complete

" nerdtree
autocmd vimenter * NERDTree
autocmd vimenter * wincmd p
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree")
            \ && b:NERDTree.isTabTree()) | q | endif
let NERDTreeIgnore=['\.pyc$', '\~$']

" fold
set foldmethod=indent
set nofoldenable

" flagging Unnecessary Whitespace
highlight BadWhitespace ctermbg=red guibg=darkred
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/
