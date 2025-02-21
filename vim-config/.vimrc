set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
 set rtp+=~/.vim/bundle/Vundle.vim
 call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'


Plugin 'morhetz/gruvbox'
" color scheme 

Plugin 'scrooloose/syntastic'
" syntax checker 

Plugin 'tpope/vim-fugitive'
" git 

Plugin 'tpope/vim-commentary'
" easier commenter 


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

colorscheme gruvbox
