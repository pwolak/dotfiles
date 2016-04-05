set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" " let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'evanmiller/nginx-vim-syntax'
Plugin 'nono/vim-handlebars'
Plugin 'majutsushi/tagbar'
Plugin 'bling/vim-airline'
Plugin 'tpope/vim-endwise'
Plugin 'tpope/vim-markdown'
Plugin 'scrooloose/nerdcommenter'
Plugin 'tmhedberg/matchit'
Plugin 'mileszs/ack.vim'
Plugin 'honza/vim-snippets'
Plugin 'vim-ruby/vim-ruby'
Plugin 'pangloss/vim-javascript'
Plugin 'ervandew/supertab'
Plugin 'kien/ctrlp.vim'
Plugin 'kchmck/vim-coffee-script'
Plugin 'altercation/vim-colors-solarized'
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdtree'
Plugin 'elixir-lang/vim-elixir'

call vundle#end()

let mapleader = " "
nmap <leader>f <c-p>
nmap <leader>w :w!<cr>
nmap <leader><leader> :e #<cr>

syntax on
set tabstop=2
set shiftwidth=2
map <leader>t :NERDTreeToggle<CR>
set number
set ruler
set cursorline

" NERDTree
let g:NERDChristmasTree = 1
let g:NERDTreeMapOpenSplit = "s"
let g:NERDTreeMapOpenVSplit = "v"

" set columns=126
set encoding=utf-8

" scroll when you are that far from edge
set scrolloff=8

" Whitespace stuff
set nowrap
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set list listchars=tab:\ \ ,trail:·

" Searching
set hlsearch
set incsearch
set ignorecase
set smartcase

" Tab completion
set wildmode=list:longest,list:full
set wildignore+=*.o,*.obj,.git,*.rbc

set laststatus=2

set noequalalways

" Remember last location in file
if has("autocmd")
au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
\| exe "normal g'\"" | endif
endif

" Thorfile, Rakefile and Gemfile are Ruby
au BufRead,BufNewFile {Gemfile,Rakefile,Thorfile,config.ru} set ft=ruby

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

" load the plugin and indent settings for the detected filetype
filetype plugin indent on

" Default color scheme
" color desert
set background=dark
colorscheme solarized

" MacVIM shift+arrow-keys behavior (required in .vimrc)
let macvim_hig_shift_movement = 1

" suffixes with lower priority
set suffixes=.bak,~,.h,.swp,.aux,.log,.out,.toc

" ignore those files when searching
set wildignore=*.o,*.pdf,*.class,*.pyc

" no .swp files"
set nobackup
set nowritebackup

" share clipboard"
set clipboard=unnamed
