syntax enable
colorscheme molokai
set background=dark

set mouse=a
set autoread
"set tabstop=2
"set softtabstop=2
set expandtab
set smartindent
set tabstop=2 softtabstop=0 expandtab shiftwidth=4 smarttab

set number
set showcmd
set cursorline
set showmatch

map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

"======VUNDLE STUFF===========
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
"Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
"Plugin 'L9'
" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
"Plugin 'user/L9', {'name': 'newL9'}

"=========MY OWN PLUGINS==============
Plugin 'tomasr/molokai'
Plugin 'scrooloose/nerdtree'
Plugin 'Lokaltog/vim-distinguished'
Plugin 'kien/ctrlp.vim'
Bundle 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
Plugin 'airblade/vim-gitgutter'
Plugin 'tpope/vim-fugitive'
Plugin 'skalnik/vim-vroom'
Plugin 'tpope/vim-endwise'
Plugin 'janko-m/vim-test'
Plugin 'benmills/vimux'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'mileszs/ack.vim'
Plugin 'majutsushi/tagbar'
Plugin 'elzr/vim-json'
Plugin 'vim-ruby/vim-ruby'
Plugin 'pangloss/vim-javascript'
Plugin 'chrisbra/improvedft'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

"========NERDTREE STUFFS==============
" autocmd vimenter * NERDTree
" autocmd StdinReadPre * let s:std_in=1
" autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
map <C-n> :NERDTreeToggle<CR>

"========Tab Stuff==================
nmap <F8> :TagbarToggle<CR>

"========POWERLINE STUFFS============
set guifont=Inconsolata\ for\ Powerline:h14
let g:Powerline_symbols = 'fancy'
set encoding=utf-8
set t_Co=256
set fillchars+=stl:\ ,stlnc:\
set term=xterm-256color
set termencoding=utf-8
set t_ut=

if has("gui_running")
    let s:uname = system("uname")
    if s:uname == "Darwin\n"
        set guifont=Inconsolata\ for\ Powerline:h14
    endif
endif
autocmd FileType ruby setlocal expandtab shiftwidth=2 softtabstop=2
set laststatus=2
"======Ctrl P========================
let g:ctrlp_working_path_mode = 'ra'
"======Vroom


"===== Vimtest
let test#strategy = "vimux"

