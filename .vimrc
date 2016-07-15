"""" General
set nocompatible     "from http://nvie.com/posts/how-i-boosted-my-vim/
set number              " Show line numbers
set showbreak=+++	" Wrap-broken line prefix
set textwidth=100	" Line wrap (number of cols)
set linebreak
set showmatch	        " Highlight matching brace
set visualbell	        " Use visual bell (no beeping)

set hlsearch	        " Highlight all search results
set smartcase	        " Enable smart-case search
set ignorecase	        " Always case-insensitive
set incsearch	        " Searches for strings incrementally 
set autoindent	        " Auto-indent new lines
set expandtab	        " Use spaces instead of tabs
set shiftwidth=4	" Number of auto-indent spaces
set smartindent	        " Enable smart-indent
set smarttab	        " Enable smart-tabs
set softtabstop=4	" Number of spaces per Tab
:syntax enable          " Enables syntax highlighting (at least for bash)


"""" Advanced
set ruler	                " Show row and column ruler information
set undolevels=1000	        " Number of undo levels
set backspace=indent,eol,start	" Backspace behaviour

""" VB
syntax on                   "turns highlighting on
"set nowrap	            "do not Wrap lines
augroup WrapLineInTxtFile   "turns wraping on for .txt files
    autocmd!
    autocmd FileType .txt setlocal wrap
augroup END
set tw=0                    "turn word wrapping off
" activate shift-tab for command mode
nnoremap <S-Tab> <<
" activate shift-tab for insert mode
inoremap <S-Tab> <C-d>
