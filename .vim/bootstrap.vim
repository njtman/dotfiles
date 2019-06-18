" Make Vim more useful.  This should always be your first line.
set nocompatible

" Wraps paths to make them relative to this directory.
function! Dot(path)
  return '~/dotfiles/.vim/' . a:path
endfunction

" Load all configuration modules.
for file in split(glob(Dot('modules/*.vim')), '\n')
  execute 'source' file
endfor


" Basic options
set ruler
set autoindent
set visualbell

" Show line numbers
set number

" Initiate Pathogen
call pathogen#infect()

" Set default two space width
set shiftwidth=2

autocmd FileType html setlocal shiftwidth=2 tabstop=2

autocmd FileType javascript setlocal shiftwidth=2 tabstop=2
autocmd FileType java setlocal shiftwidth=4 tabstop=4
autocmd FileType swift setlocal shiftwidth=4 tabstop=4
autocmd FileType xml setlocal shiftwidth=4 tabstop=4

set expandtab

autocmd FileType markdown set spell
autocmd FileType text set spell
set nowrap

set ignorecase

set mouse=a
