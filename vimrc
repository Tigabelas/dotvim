execute pathogen#infect()
syntax enable
set t_Co=256
set ts=4
set autoindent
set noshowmode
filetype plugin on
syn on se title
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set number
set cursorline
set laststatus=2
set exrc
set secure
set colorcolumn=110
set clipboard=unnamed
set cursorline
set hidden
let python_highlight_all=1
highlight ColorColumn ctermbg=darkgray
let g:airline_theme='badwolf'

autocmd vimenter * NERDTree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

let g:NERDTreeQuitOnOpen=0
let NERDTreeShowHidden=1
let g:racer_cmd="/home/zivlab/.cargo/bin/racer"
let $RUST_SRC_PATH="/usr/local/src/rustc-1.11.0/src"
nmap <silent> <leader>k :NERDTreeToggle<cr>
nmap <silent> <leader>y :NERDTreeFind<cr>
inoremap {<CR> {<CR>}<Esc>ko

command -nargs=1 E execute('silent! !mkdir -p "$(dirname "<args>")"') <Bar> tabe <args>
