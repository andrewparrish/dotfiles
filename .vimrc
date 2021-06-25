" Basic Settings
syntax enable
colorscheme molokai
set background=dark
set mouse=a
set autoread
set expandtab
set smartindent
set tabstop=2 softtabstop=0 expandtab shiftwidth=4 smarttab

set number
set showcmd
set cursorline
set showmatch
set laststatus=2

set backup
set backupdir=~/.vim/backup
set directory=~/.vim/tmp

highlight ColorColumn ctermbg=blue
call matchadd('ColorColumn', '\%81v', 100)

" ======VUNDLE STUFF===========
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
"Bundle 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
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
Plugin 'scrooloose/nerdcommenter'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'scrooloose/syntastic'
Plugin 'https://github.com/leafgarland/typescript-vim.git'
Plugin 'Quramy/vim-js-pretty-template'
Plugin 'Shougo/vimproc.vim'
Plugin 'Quramy/tsuquyomi'
Plugin 'jiangmiao/auto-pairs'
Plugin 'tpope/vim-rails'
Plugin 'kchmck/vim-coffee-script'
Plugin 'ryanoasis/vim-devicons'
"
" Window Management
"
Plugin 'ZoomWin'

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
map <C-`> :bnext <Enter>
"========POWERLINE STUFFS============
set guifont=Fantasque\ Sans\ Mono:h11
set guioptions=
let g:Powerline_symbols = 'fancy'
"set encoding=utf-8
set t_Co=256
set fillchars+=stl:\ ,stlnc:\
"set term=xterm-256color
"set termencoding=utf-8
set t_ut=

"====Airline stuff
let g:airline_theme='powerlineish'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline_section_b = '%{strftime("%c")}'
let g:airline#extensions#whitespace#enabled = 0

if ! has('gui_running')
  set ttimeoutlen=0
  augroup FastEscape
    autocmd!
    au InsertEnter * set timeoutlen=0
    au InsertLeave * set timeoutlen=50
  augroup END
endif

"set timeoutlen=1000 ttimeoutlen=0

if has("gui_running")
    let s:uname = system("uname")
    if s:uname == "Darwin\n"
        "set guifont=Inconsolata\ for\ Powerline:h14
        set guifont=Fantasque\ Sans\ Mono:h14
    endif
endif

" Filetype-specific overrides
autocmd FileType javascript setlocal nosmartindent
autocmd FileType ruby setlocal expandtab shiftwidth=2 softtabstop=2
autocmd FileType javascript setlocal expandtab shiftwidth=2 softtabstop=2
autocmd FileType yaml setlocal expandtab shiftwidth=2 softtabstop=2
autocmd FileType typescript setlocal expandtab shiftwidth=2 softtabstop=2

"======Ctrl P========================
let g:ctrlp_working_path_mode = 'ra'
"let g:ctrlp_working_path_mode = 0
set wildignore+=*/tmp/*,*.so,*.swp,*/node_modules/*,*/vendor/*

"===== Vimtest
let test#strategy = "vimux"
let test#ruby#minitest#file_pattern = 'test/.*\.rb'
let test#ruby#rspec#executable = 'rspec'
let g:test#javascript#jest#file_pattern = '\v(__tests__/.*|(spec|test))\.(js|jsx|coffee|ts|tsx)$'
let g:test#javascript#jest#executable = 'jest'

nmap <silent> <leader>t :TestNearest<CR>
nmap <silent> <leader>T :TestFile<CR>
nmap <silent> <leader>a :TestSuite<CR>
nmap <silent> <leader>l :TestLast<CR>
nmap <silent> <leader>g :TestVisit<CR>

"====Custom Hotkeys========
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

vmap <C-f> y0/<C-r>"<Enter>cgn
nnoremap <Leader>n :bn<CR>
nnoremap <Leader>p :bp<CR>
nnoremap <Leader>b :ls<CR>:b<Space>
nnoremap <silent><Leader><C-]> <C-w><C-]><C-w>T
"autocmd filetype javascript setlocal nmap <Leader>cl yiwoconsole.log('<c-r>"', <c-r>");<Esc>^
"autocmd filetype ruby setlocal imap <Leader>cl yiwoputs(<c-r>")<Esc>^

nnoremap <Leader>` :noh<CR>
nnoremap <Leader>nt :tabedit %<CR>
nnoremap <Leader>gtd :TsuTypeDefinition<CR>
nnoremap <Leader>imp :TsuImport<CR>

"=====Syntastic Settings=====
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_typescript_checkers = ['tslint']
let g:syntastic_ignore_files = ['\.spec\.ts', '\.html']


"=====Typescript Setting"
let g:typescript_compiler_binary = 'tsc'
let g:typescript_compiler_options = ''
autocmd QuickFixCmdPost [^l]* nested cwindow
autocmd QuickFixCmdPost    l* nested lwindow

autocmd FileType typescript JsPreTmpl html
autocmd FileType typescript syn clear foldBraces

"===TsuImport Settings"
:let g:tsuquyomi_single_quote_import=1
