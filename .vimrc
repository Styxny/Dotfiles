set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'

Plugin 'scrooloose/nerdtree'

call vundle#end()
filetype plugin indent on


" Add in relative line number around absolute line number
:set relativenumber
:set number
:set number relativenumber

au BufNewFile,BufRead *.py
    \ set tabstop=4
    \ set softtabstop=4
    \ set shiftwidth=4
    \ set textwidth=4
    \ set expandtab
    \ set autoindent
    \ set fileformat=unix


" Highlight options
:set nohlsearch
:set incsearch 

" Maping it easier to more between windows
:nnoremap J <C-w>j
:nnoremap K <C-w>k
:nnoremap H <C-w>h
:nnoremap L <C-w>l

" Maping for window resizing
:nnoremap - <C-w>-
:nnoremap + <C-w>+
:nnoremap = <C-w>=
:nnoremap < <C-w><
:nnoremap > <C-w>>

" Don't wrap text
:set nowrap

" Enable folding
set foldmethod=indent
set foldlevel=99
nnoremap <space> za
