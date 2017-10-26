cp .vimrc ~
mkdir -p ~/.vim/colors
git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/Vundle.vim
git clone https://github.com/tomasr/molokai.git ~/.vim/cache
cp ~/.vim/cache/colors/molokai.vim ~/.vim/colors/molokai.vim
vim +PluginInstall +qall
