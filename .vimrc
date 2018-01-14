set nocompatible

call plug#begin('~/.ivm/plugged')

Plug 'vim-airline/vim-airline'
Plug 'sheerun/vim-polyglot'
Plug 'dikiaap/minimalist'
Plug 'chriskempson/base16-vim'

call plug#end()

colorscheme base16-default-dark

" Enable global indentation
filetype plugin indent on

" Show existing tab with 4 spaces width
set tabstop=4

" When indenting with '>', use 4 spaces width
set shiftwidth=4

" Sets the number of columns for a TAB
set softtabstop=4

" On pressing tab, insert 4 spaces
set expandtab

 function! AirlineInit()
     let g:airline_section_z = airline#section#create(['%l/%L %c'])
     let g:airline_section_b = airline#section#create(['branch'])
 endfunction
 autocmd User AirlineAfterInit call AirlineInit()

let g:airline_theme='minimalist'
let g:airline_powerline_fonts = 1

let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline#extensions#tabline#enabled = 1

hi LineNr ctermbg=000
set number
set noshowmode

set noswapfile

autocmd! BufNewFile,BufRead *.vs,*.fs set ft=glsl
autocmd! BufNewFile,BufRead *.asm set ft=nasm
