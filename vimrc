set history=700
filetype plugin on

" Automatically update when reloaded
set autoread

"""""""""""""""""""" Vundle """""""""""""""""""" 
set nocompatible
filetype off
set rtp+=~/.vim/bundle/neobundle.vim

call plug#begin(expand('~/.vim/bundle/'))

" Configure all the plugins
Plug 'cdmedia/itg_flat_vim'
Plug 'godlygeek/tabular'
Plug 'tpope/vim-fugitive'
Plug 'scrooloose/nerdtree'
Plug 'itchyny/lightline.vim'
Plug 'Raimondi/delimitMate'
Plug 'Yggdroot/indentLine'
Plug 'tpope/vim-surround'
Plug 'Valloric/YouCompleteMe'
Plug 'LaTeX-Box-Team/LaTeX-Box'
Plug 'junegunn/goyo.vim'
set fillchars+=stl:\ ,stlnc:\

call plug#end()
filetype plugin indent on

"""""""""""""""""""" Theming """""""""""""""""""" 
syntax enable
colorscheme itg_flat

let g:lightline = {
 \  'active': {
 \       'left': [ ['mode','paste'],['fugitive','readonly','filename','modified'] ]
 \  },
 \  'component': {
 \      'readonly': '%{&readonly?"X":""}',
 \      'modified': '%{&modified?"+":&modifiable?"":"-"}',
 \      'fugitive': '%{exists("*fugitive#head")?fugitive#head():""}'
 \  },
 \  'component_visible_condition': {
 \      'readonly': '(&readonly)',
 \      'modified': '(&modified||!&modifiable)',
 \      'fugitive': '(exists("*fugitive#head") && ""!=fugitive#head())'
 \  }
 \}

"""""""""""""""""""" Files """"""""""""""""""""
set nobackup
set nowb
set noswapfile

"""""""""""""""""""" Text Editing """"""""""""""""""""
set number
set nocursorcolumn
set nocursorline
set norelativenumber
syntax sync minlines=256
set expandtab
set smarttab

set shiftwidth=4
set tabstop=4

" Linebreak on 400 chars
set lbr
set tw=500

set ai " Autoindent
set si " Smart Indent
set wrap " Wrap Lines

"""""""""""""""""""" Keymap """"""""""""""""""""
" Space searches and ctrl-space searches backwards
map <space> /
map <c-space> ?

let mapleader = ","
nmap <leader>m :w<cr>:make<cr>

"Nerd Tree open and close automatically. CTRL-N to toggle
"autocmd vimenter * NERDTree
map <C-n> :NERDTreeToggle<CR>
"autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

set backspace=eol,start,indent
set whichwrap+=<,>,h,l


""""""""""""""""""""" Latex """"""""""""""""""""""""
let g:LatexBox_latexmk_preview_continuously = 1
let g:LatexBox_quickfix=2

