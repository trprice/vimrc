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

"Load the different colorschemes that we've got available.
set runtimepath=~/development/vimrc/,$VIMRUNTIME


"Update this directory to whereever your vim functions are kept.
source ~/development/vimrc/SourceScriptsInDir.vim

call SourceScriptsInDir ("~/development/vimrc/functions")


"Set the colorscheme
"colorscheme midnight
colorscheme peaksea
