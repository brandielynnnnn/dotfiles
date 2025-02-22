#!/bin/bash

# copies vimrc from already cloned repo
cp ~/dotfiles/vim-config/.vimrc ~/

# install vundle if not already installed 
if [ ! -d ~/.vim/bundle/Vundle.vim ]; then
	    git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
fi

# installs vim plugins 
vim +PluginInstall +qall

# notifies user
echo "Vim setup complete!"



