"let loaded_matchparen = 1

set nocompatible
filetype off

let mapleader = "\\"

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'Align'

Plugin 'cscope_macros.vim'
Plugin 'majutsushi/tagbar'

Plugin 'tpope/vim-fugitive'

Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-unimpaired'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-surround'

Plugin 'Shougo/vimproc'
Plugin 'Shougo/neocomplcache'
Plugin 'Shougo/neosnippet'
Plugin 'ujihisa/neco-ghc'

Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'

Plugin 'derekwyatt/vim-scala'

Plugin 'indenthaskell.vim'
Plugin 'syntaxhaskell.vim'
Plugin 'kchmck/vim-coffee-script'
Plugin 'posva/vim-vue'

Plugin 'L9'
Plugin 'FuzzyFinder'

Plugin 'sudo.vim'

Plugin 'xml.vim'
Plugin 'mattn/emmet-vim'

Plugin 'xoria256.vim'
Plugin 'bling/vim-airline'
Plugin 'ryanoasis/vim-devicons'

call vundle#end()
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
set hlsearch

set wmnu wim=full

nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>

let g:airline_powerline_fonts = 1

if $COLORTERM == 'gnome-terminal'
  set t_Co=256
endif

if executable('coffeetags')
  let g:tagbar_type_coffee = {
        \ 'ctagsbin' : 'coffeetags',
        \ 'ctagsargs' : '',
        \ 'kinds' : [
        \ 'f:functions',
        \ 'o:object',
        \ ],
        \ 'sro' : ".",
        \ 'kind2scope' : {
        \ 'f' : 'object',
        \ 'o' : 'object',
        \ }
        \ }
endif

let g:fugitive_git_executable = 'LANG=en_US.UTF8 git'
