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
Plug 'rebelot/kanagawa.nvim'
Plug 'neoclide/coc.nvim' , {'branch' : 'release'}
Plug 'feline-nvim/feline.nvim'
Plug 'Shougo/deoplete.nvim'
Plug 'lighttiger2505/deoplete-vim-lsp'
Plug 'ludovicchabant/vim-gutentags'
Plug 'prabirshrestha/vim-lsp'
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
inoremap <expr> <cr> coc#pum#visible() ? coc#_select_confirm() : "\<CR>"
" C++
" setting with vim-lsp
if executable('ccls')
   au User lsp_setup call lsp#register_server({
      \ 'name': 'ccls',
      \ 'cmd': {server_info->['ccls']},
      \ 'root_uri': {server_info->lsp#utils#path_to_uri(
      \   lsp#utils#find_nearest_parent_file_directory(
      \     lsp#utils#get_buffer_path(), ['.ccls', 'compile_commands.json', '.git/']))},
      \ 'initialization_options': {
      \   'highlight': { 'lsRanges' : v:true },
      \   'cache': {'directory': stdpath('cache') . '/ccls' },
      \ },
      \ 'whitelist': ['c', 'cpp', 'objc', 'objcpp', 'cc'],
      \ })
endif

let g:coc_global_extensions = ['coc-clangd']
" setting with vim-lsp
" Disable auto-indentation for C++ files (optional)
autocmd FileType cpp setlocal noexpandtab

" Golang
let g:go_play_open_browser = 0
let g:go_fmt_fail_silently = 1
let g:go_fmt_command = "goimports"

" colors 
set t_Co=256
set background=dark
colorscheme kanagawa-dragon 

filetype on "detect files based on type
filetype plugin on 

filetype indent on "maintain identation
set tags=tags
