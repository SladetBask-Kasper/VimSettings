#! /bin/bash

# https://github.com/vim-syntastic/syntastic/blob/master/README.markdown#installation

echo "Do You Have The Following tools?"
echo " * git"
echo " * vim"
echo " * curl"
echo "Press any to for yes, cancle with CTRL-C"
read

cd
echo "STARTING INSTALL FOR VIM SETTINGS"
cd Downloads
echo "gettin' vim settings"
git clone https://github.com/SladetBask-Kasper/VimSettings.git
cd VimSettings
mv vim.vim ~/.vim
mv k.vimrc ~/.vimrc
cd ..
rm -rf VimSettings

##
## syntastic Install script
##

cd
mkdir -p ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
cd
echo "" >> .vimrc
echo "execute pathogen#infect()" >> .vimrc
cd ~/.vim/bundle && \
git clone --depth=1 https://github.com/vim-syntastic/syntastic.git

cd

echo "set statusline+=%#warningmsg#" >> .vimrc
echo "set statusline+=%{SyntasticStatuslineFlag()}" >> .vimrc
echo "set statusline+=%*" >> .vimrc

echo "let g:syntastic_always_populate_loc_list = 1" >> .vimrc
echo "let g:syntastic_auto_loc_list = 1" >> .vimrc
echo "let g:syntastic_check_on_open = 1" >> .vimrc
echo "let g:syntastic_check_on_wq = 0" >> .vimrc
