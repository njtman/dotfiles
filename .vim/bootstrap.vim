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

set number
