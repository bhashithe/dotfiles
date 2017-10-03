set nocompatible
syntax on
set ignorecase
set smartcase
set incsearch

filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Plugin 'gmarik/vundle'
Plugin 'kien/ctrlp.vim'
Plugin 'majutsushi/tagbar'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
Plugin 'Valloric/YouCompleteMe'
Plugin 'SirVer/ultisnips'
Plugin 'bling/vim-airline'
Plugin 'honza/vim-snippets'
Plugin 'raimondi/delimitmate'
Plugin 'terryma/vim-multiple-cursors'
" Plugin 'Lokaltog/vim-powerline'
" Plugin 'tpope/vim-colorschemes'
Plugin 'scrooloose/nerdtree.git'
" Plugin 'Buffergator'
" Now we can turn our filetype functionality back on
filetype plugin indent on

set grepprg=grep\ -nH\ $*
let g:tex_flavor = "latex"
let g:Tex_DefaultTargetFormat='pdf'
let g:Tex_ViewRule_pdf = "mupdf"

" my key bindings
map <leader>n :tabnew<cr>
map <leader>[ :tabprevious<cr>
map <leader>] :tabnext<cr>
map <leader>w :tabclose<cr>

map <F2> :NERDTreeToggle<cr>

set nu
set laststatus=2
set encoding=utf-8

"snips
let g:UltiSnipsExpandTrigger="<c-j>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" biber latex map
autocmd filetype tex map <leader>q :!pdflatex %; biber '%:t:r'; pdflatex %<cr><cr>
autocmd filetype tex map <leader>e :!mupdf '%:t:r.pdf' &<cr><cr>

inoremap <Space><Space> <Esc>/<++><Enter>"_c4l
" Latex bindings
autocmd filetype tex inoremap ;em \emph{}<Space><++><Esc>T{i
autocmd filetype tex inoremap ;bf \textbf{}<Space><++><Esc>T{i
autocmd filetype tex inoremap ;pc \parencite{}<Space><++><Esc>T{i
autocmd filetype tex inoremap ;ay \citeauthor{R}(\citeyear{<++>})<Space><++><Esc>FRs
autocmd filetype tex inoremap ;cf \begin{frame}<Enter><Enter>\end{frame}<Up><Tab>\frametitle{}<Left>
autocmd filetype tex inoremap ;cd \begin{frame}[fragile]<Enter><Enter>\end{frame}<Up>
autocmd filetype tex inoremap ;ci \begin{itemize}<Enter><Enter>\end{itemize}<Up>
autocmd filetype tex inoremap ii \item<Space>
autocmd filetype tex inoremap ;cv \begin{verbatim}<Enter><Enter>\end{verbatim}<Up>
" autocmd filetype tex innoremap $$ $$ R $$<Space><++>FRs
autocmd filetype tex inoremap ;b \bar{}<++><Esc>T{i
" BibTex bindings
" autocmd filetype bib inoremap ;a @article{R,<Enter>author={<++>},<Enter>title={<++>},<Enter>year={<++>}<Enter>}<Escape>?R<Enter>s
