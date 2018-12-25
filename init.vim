" ---------------------------------------
" Plugins
" ---------------------------------------

call plug#begin('~/.config/nvim/plugged')
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'tpope/vim-commentary'
Plug 'bronson/vim-trailing-whitespace'
Plug 'itchyny/vim-gitbranch'
Plug 'itchyny/lightline.vim'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'moll/vim-node'
call plug#end()

" ---------------------------------------
" key binding
" ---------------------------------------

nnoremap <C-\> :NERDTreeFind<CR>
nnoremap <C-o> :NERDTreeToggle<CR>
nnoremap <C-s> :w<CR>

nnoremap <C-k> <C-w><Up>
nnoremap <C-j> <C-w><Down>
nnoremap <C-l> <C-w><Right>
nnoremap <C-h> <C-w><Left>

nnoremap <A-n> :noh<CR>
inoremap <C-Space> <C-n>
nnoremap <C-Ins> +p<CR>

nnoremap H gT
nnoremap L gt
nnoremap F :FixWhitespace<CR>
nnoremap <silent> + <C-w>+
nnoremap <silent> - <C-w>-
nnoremap <silent> { <C-w>>
nnoremap <silent> } <C-w><

" buffers
" nnoremap H :bp<CR>
" nnoremap L :bn<CR>
" nnoremap <C-q> :bd<CR>

tnoremap <Esc> <C-\><C-n>

" ---------------------------------------
" basic
" ---------------------------------------

"" Encoding
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8
set bomb
set binary


"" Fix backspace indent
set backspace=indent,eol,start

"" Tabs. May be overriten by autocmd rules
filetype on
filetype plugin indent on
filetype plugin on

set tabstop=4
set softtabstop=0
set shiftwidth=4
set expandtab

"" Enable hidden buffers
set hidden

"" Searching
set hlsearch
set incsearch
set ignorecase
set smartcase

"" Directories for swp files
set nobackup
set noswapfile

set fileformats=unix,dos,mac
set showcmd
set shell=/bin/bash

" Allow to copy/paste between VIM instances
" "copy the current visual selection to ~/.vbuf
vmap <Leader>y :w! ~/.vbuf<CR>
" "copy the current line to the buffer file if no visual selection
nmap <Leader>y :.w! ~/.vbuf<CR>
" "paste the contents of the buffer file
nmap <Leader>p :r ~/.vbuf<CR>

" ---------------------------------------
" visual
" ---------------------------------------
syntax on
set ruler
set number

let no_buffers_menu=1
if !exists('g:not_finish_vimplug')
  colorscheme xoria256
endif

set mousemodel=popup
set t_Co=256
set gfn=Monospace\ 10
set listchars=tab:..
set list

" lightline
let g:lightline = {
            \ 'colorscheme': 'powerline',
            \ 'active': {
            \   'left': [ [ 'mode', 'paste' ],
            \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
            \ },
            \ 'component_function': {
            \   'gitbranch': 'gitbranch#name'
            \ },
            \ }
set noshowmode
