set nocompatible              " be iMproved, required
filetype off                  " required

set history=100
syntax on
set autoindent
set backspace=indent,eol,start
set relativenumber
set number 
set ruler
set showcmd
set incsearch
set diffopt=vertical 
set wrap

"Forces vim to use project specific .vimrc files if present
set exrc
set secure
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" " alternatively, pass a path where Vundle should install plugins
" "call vundle#begin('~/some/path/here')
"
" " let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'honza/vim-snippets'
Plugin 'Valloric/YouCompleteMe'
"
" " The following are examples of different formats supported.
" " Keep Plugin commands between vundle#begin/end.
" " plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
"
"Search results for: NERD_tree-Project
Plugin 'NERD_tree-Project'
Plugin 'The-NERD-Commenter'
Plugin 'scrooloose/nerdtree'
"syntastic syntax highlight
Plugin 'scrooloose/syntastic'
"surround support
Plugin 'tpope/vim-surround'
"fuzzi file finder
Plugin 'kien/ctrlp.vim'
"autocomplete
"Plugin 'valloric/youcompleteme'
"autocomplete java
Plugin 'artur-shaik/vim-javacomplete2'
Plugin 'klen/python-mode'
Plugin 'majutsushi/tagbar'
"
" " plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" " Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
" " git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" " The sparkup vim script is in a subdirectory of this repo called vim.
" " Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" " Install L9 and avoid a Naming conflict if you've already installed a
" " different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}
"
" " All of your Plugins must be added before the following line
call vundle#end()            " required


"syntastic configurations
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_java_javac_config_file_enabled = 1
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" Trigger configuration. Do not use <tab> if you use
" https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
"let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
"
" " If you want :UltiSnipsEdit to split your window.
" let g:UltiSnipsEditSplit="vertical"V
filetype plugin indent on    " required
" " To ignore plugin indent changes, instead use:
filetype plugin on

"Changes paradigm of file drawer to split file explorer
"let NERDTreeHijackNetrw=1
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
"
"
"Remap the leader character
let mapleader = "\<Space>" 
let maplocalleader = "\\"
"Map maximize splitted buffer to new full tab with t% command and get back to
"splitted structure with td
nnoremap <leader>M :tabedit %<CR>
nnoremap <leader>m :tabclose<CR>

"first tab hit completes as much as possible, second show list of
"possibilities and third try to solve cycling
set wildmode=longest,list,full
set wildmenu

"Map panes/splits operations with leader
nnoremap <leader>v :vsp<CR>
nnoremap <leader>o :sp<CR>
nnoremap <leader>h <c-w><c-h>
nnoremap <leader>j <c-w><c-j>
nnoremap <leader>k <c-w><c-k>
noremap <leader>l <c-w><c-l>
nnoremap <leader>s :TagbarToggle<CR>

"map to NERDTree structure
nnoremap <leader>t :NERDTree<CR>
nnoremap <leader>f :grep 

" in normal mode usefull
noremap ; :
noremap : ;
"
"don't exit visual mode when indenting with << and >>
vnoremap > >gv
vnoremap < <gv

nnoremap <C-tab>   :tabnext<CR>
nnoremap <C-S-tab>   :tabprevious<CR>
if has('gui_running')
	colorscheme codeschool
endif

set tabstop=4 shiftwidth=4
autocmd FileType javascript,html setlocal shiftwidth=2 tabstop=2
autocmd FileType python setlocal expandtab shiftwidth=4 softtabstop=4
