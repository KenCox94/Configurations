set relativenumber

" =============================================================================
" # PLUGINS
" =============================================================================
call plug#begin() 

Plug 'cespare/vim-toml', {'branch': 'main'}
Plug 'stephpy/vim-yaml'
Plug 'rust-lang/rust.vim'
Plug 'rhysd/vim-clang-format'
Plug 'fatih/vim-go'
Plug 'dag/vim-fish'
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'
Plug 'NLKNguyen/papercolor-theme'
Plug 'neoclide/coc.nvim' , {'branch' : 'release'}
Plug 'feline-nvim/feline.nvim'
call plug#end()

" no arrow keys --- force home row 
nnoremap <up> <nop>
nnoremap <down> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>

" Ctrl+j and Ctrl+k as ESC
nnoremap <C-j> <Esc>
inoremap <C-j> <Esc>

" Jump to start and end of line using the home row keys 
map H ^
map L $

" Autocomplete
inoremap <expr> <cr> coc#pum#visible() ? coc#_select_confirm() : "\<CR>"

" Golang
let g:go_play_open_browser = 0
let g:go_fmt_fail_silently = 1
let g:go_fmt_command = "goimports"

" colors 
set t_Co=256
set background=dark
colorscheme PaperColor

filetype on "detect files based on type
filetype plugin on 

filetype indent on "maintain identation

