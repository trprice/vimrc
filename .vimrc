"Set a base directory.
let $BASE_DIR='~/development/vimrc/functions'

"Source pathogen since it's not in the normal autoload directory
source $BASE_DIR/../autoload/pathogen.vim

"Start up pathogen
call pathogen#infect($BASE_DIR)

set expandtab
set shiftwidth=4
set softtabstop=4
set tabstop=4
set cindent
set number


"Set the colorscheme
colorscheme peaksea
"colorscheme adaryn

"Highlight anything red that is past column 80.
highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%81v.\+/


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

"Syntastic settings
let g:syntastic_c_compiler = $CC
let g:syntastic_cpp_compiler = $CXX
let g:syntastic_cpp_check_header = 1
let g:syntastic_cpp_no_default_include_dirs = 1
