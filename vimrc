"let loaded_matchparen = 1

set nocompatible
filetype off

let mapleader = "\\"

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'

Bundle 'Align'

Bundle 'cscope_macros.vim'
Bundle 'majutsushi/tagbar'

Bundle 'tpope/vim-fugitive'

Bundle 'tpope/vim-commentary'
Bundle 'tpope/vim-unimpaired'
Bundle 'tpope/vim-repeat'
Bundle 'tpope/vim-surround'

Bundle 'Shougo/vimproc'
Bundle 'Shougo/neocomplcache'
Bundle 'Shougo/neosnippet'
Bundle 'ujihisa/neco-ghc'

Bundle 'scrooloose/nerdtree'
Bundle 'scrooloose/syntastic'

Bundle 'derekwyatt/vim-scala'

Bundle 'indenthaskell.vim'
Bundle 'syntaxhaskell.vim'
Bundle 'kchmck/vim-coffee-script'

Bundle 'L9'
Bundle 'FuzzyFinder'

Bundle 'sudo.vim'

Bundle 'xml.vim'
Bundle 'mattn/emmet-vim'

Bundle 'beyondwords/vim-twig'

Bundle 'benmills/vimux'

Bundle 'xoria256.vim'
Bundle 'bling/vim-airline'

Bundle 'Conque-Shell'
colorscheme xoria256

filetype plugin indent on
syntax on

for cfg in split(globpath("$HOME/.vim/bundle-cfg", "*.vim"))
	exec "source" cfg
endfor

set nobackup writebackup backupcopy=yes
set t_Co=256 | colorscheme xoria256

set laststatus=2
set splitright splitbelow

set list listchars=tab:>-,trail:-
set nowrap listchars+=precedes:<,extends:>

set ruler
set smarttab backspace=indent,eol,start
set mouse=a
set ts=2
set expandtab
set shiftwidth=2

set wmnu wim=full

nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>

set guifont=Liberation\ Mono\ Powerline\ 8
set encoding=utf-8

let g:airline_powerline_fonts = 1

if $COLORTERM == 'gnome-terminal'
  set t_Co=256
endif
