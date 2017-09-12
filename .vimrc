set nocompatible

call plug#begin('~/.vim/plugged')

Plug 'vim-airline/vim-airline'
Plug 'sheerun/vim-polyglot'
Plug 'dikiaap/minimalist'
Plug 'chriskempson/base16-vim'
Plug 'https://github.com/Valloric/YouCompleteMe.git', { 'do': './install.py' }

call plug#end()

colorscheme base16-default-dark

let g:airline_theme='minimalist'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
