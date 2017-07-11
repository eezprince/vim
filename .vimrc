:map <F2> :w\|!python %<CR>
set number
set expandtab
set tabstop=8
set shiftwidth=4
set softtabstop=4
set autoindent

let Tlist_Ctags_Cmd='/usr/bin/ctags'

execute pathogen#infect()
filetype plugin indent on
filetype plugin on
syntax on

"overlength
highlight OverLength ctermbg=red ctermfg=white guibg=#592929 
match OverLength /\%75v.\+/

set ofu=syntaxcomplete#Complete

" pydiction
let g:pydiction_location = '/home/tianhz/.vim/bundle/pydiction/complete-dict' 
let g:pydiction_menu_height = 3

" nerdtree
autocmd vimenter * NERDTree
autocmd vimenter * wincmd p
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let NERDTreeIgnore=['\.pyc$', '\~$']

" flagging Unnecessary Whitespace
highlight BadWhitespace ctermbg=red guibg=darkred
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

set foldmethod=indent
set nofoldenable
