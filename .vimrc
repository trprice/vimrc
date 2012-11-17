"Set a base directory.
let $BASE_DIR='~/vimrc'

"Source pathogen since it's not in the normal autoload directory
source $BASE_DIR/autoload/pathogen.vim

"Start up pathogen
call pathogen#infect($BASE_DIR)

set expandtab
set shiftwidth=4
set softtabstop=4
set tabstop=4
set cindent
set number

"Highlight anything red that is past column 80.
highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%81v.\+/


"Tags related items
set tags=~/tags;~

map <C-\> :tab split<CR>:exec("tag ".expand("<cword>"))<CR>


"Set the colorscheme
colorscheme peaksea
