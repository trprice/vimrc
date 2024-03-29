"Set up vundle
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

"Let vundle manage itself
Plugin 'gmarik/Vundle.vim'

"github repos
Plugin 'trprice/vimrc', {'rtp': 'bundle/my_functions'}
Plugin 'scrooloose/syntastic'
Plugin 'vim-scripts/peaksea'
Plugin 'scrooloose/nerdtree'
Plugin 'endel/vim-github-colorscheme'
Plugin 'rafi/awesome-vim-colorschemes'
Plugin 'cdelledonne/vim-cmake'

"vim-scripts repos
"Plugin 'visual_studio.vim'
Plugin 'go.vim'

"JSON
Plugin 'tpope/vim-jdaddy'

call vundle#end()
filetype plugin indent on

set expandtab
set shiftwidth=4
set softtabstop=4
set tabstop=4
set cindent
set number

" Turn on syntax highlighting
syn on

"Set the colorscheme
colorscheme iceberg

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

"Don't use arrows in NERDTree
let g:NERDTreeDirArrows=0


"Source a project specific .vim.custom for custom settings.
if filereadable (".vim.custom")
    source .vim.custom
endif


"Syntax highlighting
" Associate *.go with Go files
au BufRead,BufNewFile *.go setfiletype go
