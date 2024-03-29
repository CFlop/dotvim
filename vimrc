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

Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'

Plugin 'kchmck/vim-coffee-script'

Plugin 'L9'
Plugin 'FuzzyFinder'

Plugin 'sudo.vim'

Plugin 'leafOfTree/vim-vue-plugin'
Plugin 'yuezk/vim-js'

Plugin 'xml.vim'
Plugin 'mattn/emmet-vim'

Plugin 'xoria256.vim'
Plugin 'bling/vim-airline'
Plugin 'ryanoasis/vim-devicons'

Plugin 'heavenshell/vim-jsdoc'
Plugin 'ycm-core/YouCompleteMe'

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

nmap <silent> <C-l> <Plug>(jsdoc)
nmap con :set number!<cr>
nmap cox :set cursorline!<cr>
nmap coy :set cursorcolumn!<cr>

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

" Start autocompletion after 4 chars
 let g:ycm_min_num_of_chars_for_completion = 4
 let g:ycm_min_num_identifier_candidate_chars = 4
 let g:ycm_enable_diagnostic_highlighting = 0
" Don't show YCM's preview window [ I find it really annoying ]
 set completeopt-=preview
 let g:ycm_add_preview_to_completeopt = 0

let g:fugitive_git_executable = 'LANG=en_US.UTF8 git'

let g:vim_vue_plugin_config = {
      \'syntax': {
      \   'template': ['html'],
      \   'script': ['javascript'],
      \   'style': ['scss'],
      \},
      \'full_syntax': [],
      \'initial_indent': [],
      \'attribute': 0,
      \'keyword': 0,
      \'foldexpr': 0,
      \'debug': 1,
      \}
