set nocompatible              " be iMproved, required
syntax on
set ignorecase
set smartcase
set incsearch
set relativenumber
set tabstop=2
set softtabstop=0 noexpandtab
set shiftwidth=2
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" " alternatively, pass a path where Vundle should install plugins
" "call vundle#begin('~/some/path/here')

" " let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" my installed plugins
Plugin 'scrooloose/nerdtree'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'tpope/vim-surround'
Plugin 'kien/ctrlp.vim'
Plugin 'fs111/pydoc.vim'
" does not work
Plugin 'ivanov/vim-ipython'
" does not work
Plugin 'jpalardy/vim-slime'

Plugin 'davidhalter/jedi-vim'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'tpope/vim-markdown'
Plugin 'tmhedberg/SimpylFold'

call vundle#end()            " required
filetype plugin indent on    " required
" " To ignore plugin indent changes, instead use:
" "filetype plugin on
" "
" " Brief help
" " :PluginList       - lists configured plugins
" " :PluginInstall    - installs plugins; append `!` to update or just
" :PluginUpdate
" " :PluginSearch foo - searches for foo; append `!` to refresh local cache
" " :PluginClean      - confirms removal of unused plugins; append `!` to
" auto-approve removal
" "
" " see :h vundle for more details or wiki for FAQ
" " Put your non-Plugin stuff after this line

" ctrlP commands
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

" NERDDTree toggling
map <leader>` :NERDTreeToggle<cr>

" Slime commands
let g:slime_target = "tmux"
let g:slime_paste_file = "$HOME/.slime_paste"
let g:slime_python_ipython = 1

" UltiSnips and vim-snippets
let g:UltiSnipsExpandTrigger="<c-j>"

" SimpylFold
let g:SimpylFold_docstring_preview = 1
let g:SimpylFold_fold_import = 1


" " insert mode mappings
" todo item
inoremap <leader>ti - [ ]<space>
inoremap <leader>td <esc>^lllsx<esc>A

nmap <leader>[ :tabprevious<cr>
nmap <leader>] :tabNext<cr>
nmap <leader>w :tabclose<cr>
nmap <leader>n :tabnew
