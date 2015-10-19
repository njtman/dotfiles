" Kill the script if this Vim install if built with tiny or small.
" We don't want all these plugins running on a Rasberry Pi for example.
if !1 | finish | endif

" Initialise vim-plug
call plug#begin()

" Load plugin list for vim-plug to manage.
execute 'source' Dot('plugin-list.vim')

" Lock in the plugin list.
call plug#end()

" Load all the plugin configuration files.
for file in split(glob(Dot('modules/plugins/*.vim')), '\n')
  exec 'source' file
endfor

