" Vundle
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Plugins
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-surround'
Plugin 'jiangmiao/auto-pairs'
Plugin 'tpope/vim-repeat'
Plugin 'scrooloose/nerdcommenter'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'whatyouhide/vim-gotham'

" All of your Plugins must be added before the following line
call vundle#end()
filetype plugin indent on

" To use the default clipboard
set clipboard=unnamedplus

" Required to recognize input characters
set encoding=utf-8

set tabstop=4     " Size of a hard tabstop (ts).
set shiftwidth=4  " Size of an indentation (sw).
set expandtab     " Always uses spaces instead of tab characters (et).
set softtabstop=0 " Number of spaces a <Tab> counts for. When 0, featuer is off (sts).
set autoindent    " Copy indent from current line when starting a new line.
set smarttab      " Inserts blanks on a <Tab> key (as per sw, ts and sts).

set number
set ignorecase
set hlsearch
set pastetoggle=<F10>
set cursorline 

" To recognize comment character
filetype plugin on

" Delay in status bar fix
set ttimeoutlen=10
let g:bufferline_echo = 0
set noshowmode

" set scrolling bufferline
let g:bufferline_rotate = 0
let g:airline#extensions#bufferline#enabled = 1
let g:airline#extensions#tabline#enabled = 1

" Smarter tab line (to show buffers at top)
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline_section_x = ' %y [%{strlen(&fenc)?&fenc:&enc} %{&ff}] '
let g:airline_section_y = '[%l:%c] [%p%%]'
let g:airline_section_z = ''
let g:airline_section_error = ''
let g:airline_section_warning = ''
let g:airline_theme='gotham256'
let g:gotham_airline_emphasised_insert = 0

" color schemes
set background=dark
colorscheme gotham256
syntax on

" Fish
set shell=/bin/bash 

" Keybindings
let mapleader=" "

" Text Manipulation
nnoremap <NL> i<CR><ESC>
nmap <CR> o<ESC>
" Saving
nmap <Leader>w :w<CR>
nmap <Leader>q :q<CR>
" Turn off highlight
nmap <Leader>n :nohl<CR>
" Bypass system clipboard
map <Leader>d "_d
map <Leader>x "_x
map <Leader>c "_c
