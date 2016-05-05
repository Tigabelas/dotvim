execute pathogen#infect()
set t_Co=256
set noshowmode
filetype plugin indent on
syn on se title
set tabstop=4
set softtabstop=4
set shiftwidth=4
set noexpandtab
set number
set laststatus=2
set exrc
set secure
set colorcolumn=110
highlight ColorColumn ctermbg=darkgray
let g:airline_theme='badwolf'

autocmd vimenter * NERDTree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

let g:NERDTreeQuitOnOpen=0
let NERDTreeShowHidden=1
nmap <silent> <leader>k :NERDTreeToggle<cr>
nmap <silent> <leader>y :NERDTreeFind<cr>
inoremap {<CR> {<CR>}<Esc>ko
