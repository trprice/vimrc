source $VIM/_vimrc

"Set up vundle
filetype off
set rtp+=c:/development/vimrc/bundle/vundle/
call vundle#rc()

"Let vundle manage itself
Bundle 'gmarik/vundle'

"github repos
Bundle 'trprice/vimrc', {'rtp': 'bundle/my_functions'}
Bundle 'scrooloose/syntastic'
Bundle 'vim-scripts/peaksea'
Bundle 'scrooloose/nerdtree'
Bundle 'endel/vim-github-colorscheme'

"vim-scripts repos
Bundle 'visual_studio.vim'
Bundle 'go.vim'

filetype plugin indent on

set expandtab
set shiftwidth=4
set softtabstop=4
set tabstop=4
set cindent
set number

"Highlight column 80 red so that we don't write past it.
set colorcolumn=80

"source $VIMRUNTIME\vimrc_example.vim

"Make this act like Vim on Linux. Disable this if we want Ctrl-V to paste
"like it normally does in Windows.
"set compatible

"Enable these if we want want Ctrl-V to paste like it does in Windows (and for
"other Windows stuff to work.
set nocompatible
source $VIMRUNTIME\mswin.vim
behave mswin


"Set the colorscheme
colorscheme peaksea
"colorscheme adaryn

"Move up and down one row on the screen instead of one line.
:nmap j gj
:nmap k gk

"Incremental search
:set incsearch

"Ignore case when searching except when searching for an uppercase item.
:set ignorecase
:set smartcase

"Highlight the search. Use '\q' as a way to get rid of the highlight
" without destroying the search terms. (i.e. n or N will still work)
:set hlsearch
:nmap \q :nohlsearch<CR>

"Set the control character for NERDTree
:nmap <C-n> :NERDTreeToggle<CR>
