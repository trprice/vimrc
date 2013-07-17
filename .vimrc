"Set up vundle
filetype off
set rtp+=~/development/vimrc/bundle/vundle/
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


"NERDTree Settings
"Start NERDTree if no files were specified
autocmd vimenter * if !argc() | NERDTree | endif

"Ctrl+n opens NERDTree
map <C-n> :NERDTreeToggle<CR>


"Source a project specific .vim.custom for custom settings.
if filereadable (".vim.custom")
    source .vim.custom
endif


"Syntax highlighting
" Associate *.go with Go files
au BufRead,BufNewFile *.go setfiletype go
