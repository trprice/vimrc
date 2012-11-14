source $VIM\_vimrc

"Set a base directory.
let $BASE_DIR='H:\development\github\vimrc'

"Source pathogen since it's not in the normal autoload directory
source $BASE_DIR\autoload\pathogen.vim

"Start up pathogen
call pathogen#infect('$BASE_DIR\functions')

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
