source $VIM\_vimrc

"Source pathogen since it's not in the normal autoload directory
source H:\development\github\vimrc\pathogen\autoload\pathogen.vim

"Start up pathogen
call pathogen#infect('H:\development\github\vimrc\functions/{}')

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
