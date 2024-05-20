set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'

" Nerd Tree file explorer
Plugin 'scrooloose/nerdtree'

" fzf.zim fuzzy finder
Plugin 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plugin 'junegunn/fzf.vim'

" YouCompleteMe code completion engine
Plugin 'ycm-core/YouCompleteMe'

call vundle#end()
filetype plugin indent on
syntax on

" Set the leader map key
let mapleader = ","

" Add in absolute line number
:set number

" Highlight options
:set nohlsearch
:set incsearch 
:set ic

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
set backspace=indent,eol,start

" Enable folding
set foldmethod=indent
set foldlevel=99
nnoremap <space> za

"colorscheme
colorscheme default

" Tab stuff
set tabstop=2
set shiftwidth=2
set expandtab

" toggle NerdTree
:command NE NERDTreeToggle

" YCM settings
nnoremap <leader>jd :YcmCompleter GoTo<CR>
nnoremap <leader>jr :YcmCompleter GoToReferences<CR>

" Auto bring up NerdTree
autocmd VimEnter * NERDTree

"""""""""""""""""""""""""""
" fzf
" """""""""""""""""""""""""
:command MyGF call fzf#run(fzf#wrap({'source': 'git ls-files --recurse-submodules'}))
nnoremap <silent> <leader>F :Files<CR>
nnoremap <silent> <leader>f :Rg<CR>
nnoremap <silent> <leader>G :MyGF<CR>

