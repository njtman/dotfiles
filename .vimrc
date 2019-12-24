" Vim configuration largely inspired by Olical/dotfiles
source ~/dotfiles/.vim/bootstrap.vim

if filereadable("~/.vimrc_local")
    source ~/.vimrc_local
endif

set cursorline
set colorcolumn=100
let $NVIM_TUI_ENABLE_TRUE_COLOR=1
syntax on
