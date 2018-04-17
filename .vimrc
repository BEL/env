set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
":call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-surround'
Plugin 'rhysd/vim-crystal'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'scrooloose/syntastic'
Plugin 'junegunn/fzf'
Plugin 'junegunn/fzf.vim'
Plugin 'danro/rename.vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'scrooloose/nerdtree'
"Plugin 'tpope/vim-fugitive'
"Plugin 'git://git.wincent.com/command-t.git'
"Plugin 'file:///home/gmarik/path/to/plugin'
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
"Plugin 'ascenator/L9', {'name': 'newL9'}

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

syntax on
colorscheme solarized
set number
set tabstop=4
set softtabstop=4
set showcmd  
set cursorline  
set showmatch  
set incsearch    
set hlsearch
set shiftwidth=2
set rnu
set autoindent
set smartindent
set completeopt-=preview
set clipboard=unnamed
set listchars=eol:$,tab:>-,trail:~,extends:>,precedes:<
set rtp+=/usr/local/opt/fzf
nnoremap j gj
nnoremap k gk
nnoremap B ^
nnoremap E $
nnoremap - NERDTree
nnoremap <C-l> :noh<CR>
noremap <F2> :set list!<CR>
inoremap <F5> <C-o>:set list!<CR>
cnoremap <F5> <C-c>:set list!<CR>
imap jj <Esc>
execute pathogen#infect()

"-------------------- NERDTree Toggle ------------------------
let NERDTreeShowHidden=1
call pathogen#helptags()
nmap - :NERDTreeToggle<CR>
" au VimEnter *  NERDTree

"-------------------- Persistent Undo -----------------------
let vimDir = '$HOME/.vim'
let &runtimepath.=','.vimDir

" Keep undo history across sessions by storing it in a file
if has('persistent_undo')
    let myUndoDir = expand(vimDir . '/undodir')
        " Create dirs
            call system('mkdir ' . vimDir)
                call system('mkdir ' . myUndoDir)
                    let &undodir = myUndoDir
                        set undofile
                         endif
