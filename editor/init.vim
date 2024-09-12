syntax enable
set background=dark
set autoindent
set copyindent
set cursorline
set incsearch
set hlsearch
set relativenumber
set number
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
Plug 'rebelot/kanagawa.nvim'
Plug 'neoclide/coc.nvim' , {'branch' : 'release'}
Plug 'feline-nvim/feline.nvim'
Plug 'Shougo/deoplete.nvim'
Plug 'lighttiger2505/deoplete-vim-lsp'
Plug 'ludovicchabant/vim-gutentags'
Plug 'prabirshrestha/vim-lsp'
Plug 'github/copilot.vim'
Plug 'catppuccin/nvim', {'as':'catppuccin'}
Plug 'autozimu/LanguageClient-neovim', {
    \ 'branch': 'next',
    \ 'do': 'bash install.sh'
    \ }
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
autocmd FileType cpp setlocal noexpandtab
autocmd FileType c setlocal noexpandtab
" Golang
let g:go_play_open_browser = 0
let g:go_fmt_fail_silently = 1
let g:go_fmt_command = "goimports"


" let g:python3_host_prog =""

" colors 
set t_Co=256
colorscheme catppuccin-frappe

filetype on "detect files based on type
filetype plugin on 

filetype indent on "maintain identation
set tags=tags
set tabstop=4
set shiftwidth=4
set expandtab
let g:python3_host_prog = "~/.cache/pypoetry/virtualenvs/mace-wRS4ndAs-py3.11/bin/python"
