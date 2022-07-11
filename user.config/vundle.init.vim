set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'https://github.com/gmarik/Vundle.vim'
Plugin 'https://github.com/Shougo/vimproc.vim'
Plugin 'https://github.com/highwaynoise/chuck.vim'

call vundle#end()            " required
filetype plugin indent on    " required
