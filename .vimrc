set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'

Plugin 'scrooloose/nerdtree'

Plugin 'ycm-core/YouCompleteMe'

call vundle#end()
filetype plugin indent on
syntax on

" Add in absolute line number
:set number


" Highlight options
:set nohlsearch
:set incsearch 
set ic

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

" Allow backspace after indent
set backspace=indent

" Enable folding
set foldmethod=indent
set foldlevel=99
nnoremap <space> za

"colorscheme
colorscheme desert

" Tab stuff
set tabstop=2
set shiftwidth=2
set expandtab

" Auto bring up NerdTree
autocmd VimEnter * NERDTree

