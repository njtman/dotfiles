"Remap arrow keys to navigating around window splits
nnoremap <Right> <C-w>l
nnoremap <Left> <C-w>h
nnoremap <Up> <C-w>k
nnoremap <Down> <C-w>j

" Easy escape.
inoremap jk <esc>
inoremap kj <esc>

" Set Leader
let mapleader="\<Space>"

" <Space> + R = Shortcut to preview md files in chrome
autocmd FileType markdown noremap <buffer> <Leader>r :!markdown % > %:r\.html & /usr/bin/open -a "/Applications/Google Chrome.app" %:r\.html<cr>

