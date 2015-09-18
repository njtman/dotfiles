set number

call plug#begin('~/.vim/plugged')

" Ag plugin for file searching
Plug 'https://github.com/rking/ag.vim.git'

" Plugin for js beautification
Plug 'maksimr/vim-jsbeautify'
Plug 'scrooloose/syntastic'

" Add plugins to &runtimepath
call plug#end()

" Syntastic Config
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

