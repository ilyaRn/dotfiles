set nocompatible 
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdTree'
Plugin 'vim-airline/vim-airline'
Plugin 'scrooloose/syntastic'
Plugin 'pangloss/vim-javascript'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-fugitive'
Plugin 'mxw/vim-jsx' 
Plugin 'moll/vim-node'
Plugin 'kshenoy/vim-signature'

call vundle#end()
filetype on
filetype plugin indent on
filetype plugin on

syntax on
set t_Co=256
colorscheme xoria256 
set ruler
set laststatus=2
set nocp
set hls
set is
" Отображение номеров строк
set number
" Отображение выполняемой команды
set showcmd
" Поиск по нажатиям
set incsearch
set ignorecase
"set statusline=%<%f%h%m%r%=format=%{&fileformat}\ file=%{&fileencoding}\ enc=%{&encoding}\ %b\ 0x%B\ %l,%c%V\ %P
" Использовать общий буфер обмена
set clipboard=unnamed 
" Корректные отступы при копипасте
" set paste
set pastetoggle=
" Показывать табы в начале строки точками
set listchars=tab:..
set list
" Рабочие команды на кирилице
set keymap=russian-jcukenwin
set iminsert=0
set imsearch=0
highlight lCursor guifg=NONE guibg=Cyan " Подстветка скобок, кавычек
set nobackup " Отключаем backups
set nowb
set noswapfile
set tabstop=4 shiftwidth=4 expandtab
set smarttab
set autoindent
set visualbell " Отключить системный beep

map <C-k> <C-w><Up>
map <C-j> <C-w><Down>
map <C-l> <C-w><Right>
map <C-h> <C-w><Left>

" split resize
map <C-Up> <C-w>+
map <C-Down> <C-w>-
map <C-Left> <C-w><
map <C-Right> <C-w>>

nmap <C-\> :NERDTreeFind<CR>
nmap <C-o> :NERDTreeToggle<CR>
nmap <C-s> :w<CR>

" Allows you to enter sudo pass and save the file
" " when you forgot to open your file with sudo
cmap w!! %!sudo tee > /dev/null %

" Allow to copy/paste between VIM instances
" "copy the current visual selection to ~/.vbuf
vmap <Leader>y :w! ~/.vbuf<CR>
" "copy the current line to the buffer file if no visual selection
nmap <Leader>y :.w! ~/.vbuf<CR>
" "paste the contents of the buffer file
nmap <Leader>p :r ~/.vbuf<CR>

"switch buffer customization
nnoremap H gT
nnoremap L gt

set wildignore+=*/node_modules/*

"airline
let g:airline#enable#syntastic = 1
" let g:airline#extensions#tabline#enabled = 1

set ttimeoutlen=50
let g:airline#extensions#tabline#left_sep = '>'

" syntastic
" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*

" let g:syntastic_always_populate_loc_list = 1
" let g:syntastic_auto_loc_list = 1
" let g:syntastic_check_on_open = 1
" let g:syntastic_check_on_wq = 0
" let g:syntastic_javascript_checkers = ['eslint']

"jsx highlighting
let g:jsx_ext_required = 0
