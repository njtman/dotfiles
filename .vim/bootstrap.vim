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

" Enable true color support
let $NVIM_TUI_ENABLE_TRUE_COLOR=1

" Initiate Pathogen
call pathogen#infect()

" Set default two space width 
set shiftwidth=2

autocmd FileType html setlocal shiftwidth=2 tabstop=2

autocmd FileType javascript setlocal shiftwidth=2 tabstop=2
set expandtab

autocmd FileType markdown set spell
autocmd FileType text set spell
set nowrap

set ignorecase
