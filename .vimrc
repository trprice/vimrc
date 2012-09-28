source $VIM/vimrc

set expandtab
set shiftwidth=4
set softtabstop=4
set tabstop=4
set cindent
set number

"Highlight column 80 red so that we don't write past it.
set colorcolumn=80

source $VIMRUNTIME/vimrc_example.vim

"Update this directory to whereever your vim functions are kept.
source ~/development/vimrc/split_diff_registers.vim
