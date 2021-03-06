execute pathogen#infect()
syntax enable
set t_Co=256
set ts=4
set autoindent
set noshowmode
filetype plugin on
syn on se title
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
set number
set cursorline
set laststatus=2
set exrc
set secure
set colorcolumn=110
set clipboard=unnamedplus
set cursorline
set hidden
let python_highlight_all=1
highlight ColorColumn ctermbg=darkgray
set encoding=utf-8
let g:airline_theme='badwolf'
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif
    
" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'

" airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''

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
inoremap ( ()<Esc>:let leavechar=")"<CR>i
inoremap ' ''<Esc>:let leavechar="'"<CR>i
inoremap " ""<Esc>:let leavechar='"'<CR>i
inoremap { {}<Esc>:let leavechar="}"<CR>i
inoremap [ []<Esc>:let leavechar="]"<CR>i

imap <C-j> <Esc>:exec "normal f" . leavechar<CR>a


command -nargs=1 E execute('silent! !mkdir -p "$(dirname "<args>")"') <Bar> tabe <args>

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_javascript_checkers=['eslint']
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:jsx_ext_required = 0

call plug#begin('~/.vim/plugged')
Plug 'mtscout6/syntastic-local-eslint.vim'
call plug#end()
