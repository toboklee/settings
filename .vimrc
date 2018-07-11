" Show key binding
" :help key-notation


set nocompatible              " be iMproved, required
filetype indent plugin on                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

Plugin 'scrooloose/nerdtree'
Plugin 'davidhalter/jedi-vim'
Plugin 'vim-python/python-syntax'
Plugin 'w0rp/ale'
Plugin 'morhetz/gruvbox'
Plugin 'mileszs/ack.vim'
Plugin 'majutsushi/tagbar'
Plugin 'scrooloose/nerdcommenter'

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

" Highlight status bar when switching windows
hi StatusLine   ctermfg=15  guifg=#ffffff ctermbg=239 guibg=#4e4e4e cterm=bold gui=bold
hi StatusLineNC ctermfg=249 guifg=#b2b2b2 ctermbg=237 guibg=#3a3a3a cterm=none gui=none

" Show number
set number

" Tab
" =====================================================================================
" size of a hard tabstop
set tabstop=4

" always uses spaces instead of tab characters
set expandtab

" size of an "indent"
set shiftwidth=4

" ====================================================================================

" Leader Mapping
let mapleader = ','

" Color scheme
colorscheme gruvbox

set autoread

set wildignore=*.swp,*.bak,*.pyc,**tags**

set backspace=indent,eol,start " backspace over everything in insert mode

let g:ack_autoclose=1

" Jedi
let g:jedi#use_tabs_not_buffers = 1

" Highlight tabs and trailing spaces
set listchars=tab:»·,trail:·
set list

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Command-T
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:CommandTCancelMap='<Bslash>'
let g:CommandTMaxFiles=400000
" autocmd VimEnter :CommandTLoad<CR>

syntax on
let g:python_highlight_all = 1

let g:ale_lint_on_enter = 1
let g:ale_lint_on_save = 1
let g:ale_lint_on_text_changed = 1
let g:ale_sign_error = '✖'
let g:ale_sign_warning = '⚠'
let g:ale_statusline_format = ['✖ %d', '⚠ %d', '·']  " errors, warnings, ok
let g:ale_echo_msg_format = '%linter% | %s | %severity%'
let g:ale_linters = {'python': ['flake8', 'pylint'],}
let g:airline#extensions#ale#enabled = 1

" NerdTree hiding files
let NERDTreeIgnore = ['\.pyc$']

" Ecs to close quickfix window
nnoremap <silent> <Bslash>Q :ccl<CR>

" Map some keys to jump around lint results
" nmap <silent> <,>k <Plug>(ale_previous_wrap)
" nmap <silent> <,>j <Plug>(ale_next_wrap)

" TagBarToggle
nmap <Bslash>] :TagbarOpenAutoClose<CR>

" Ack
nmap <Bslash>a  :Ack -i ""<Left>

" File navigation systems
:map<Bslash>n :NERDTree<CR>
:map<Bslash>t :CommandT<CR>
:map<Bslash>b :CommandTBuffer<CR>

" Buffer refresh
:map<Bslash>R :bufdo e<CR>

" Closing window
:map<Bslash>q <C-w>q

" Write Files
:map<Bslash>w :w<CR>

" Key binding for nagivating windows
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l

