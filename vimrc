set history=700
filetype plugin on

" Automatically update when reloaded
set autoread

"""""""""""""""""""" Vundle """""""""""""""""""" 
set nocompatible
filetype off
set rtp+=~/.vim/bundle/neobundle.vim

call neobundle#begin(expand('~/.vim/bundle/'))

" Configure all the plugins
NeoBundleFetch 'gmarik/Vundle.vim'
NeoBundle 'cdmedia/itg_flat_vim'
NeoBundle 'godlygeek/tabular'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'mattn/webapi-vim'
NeoBundle 'mattn/gist-vim'
NeoBundle 'itchyny/lightline.vim'
NeoBundle 'Townk/vim-autoclose'
NeoBundle 'nathanaelkane/vim-indent-guides'
NeoBundle 'tpope/vim-surround'
set fillchars+=stl:\ ,stlnc:\

call neobundle#end()
filetype indent on
NeoBundleCheck

"""""""""""""""""""" Theming """""""""""""""""""" 
syntax enable
colorscheme itg_flat

"""""""""""""""""""" Files """"""""""""""""""""
set nobackup
set nowb
set noswapfile

"""""""""""""""""""" Text Editing """"""""""""""""""""
set number
set cursorline
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

"Nerd Tree open and close automatically. CTRL-N to toggle
autocmd vimenter * NERDTree
map <C-n> :NERDTreeToggle<CR>
"autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif



