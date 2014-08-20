source ~/.vim/highlights/scala.vim
let g:neocomplete#enable_at_startup = 1
set colorcolumn=80,120
set tabstop=4
set expandtab
set paste
set number
set ruler
set nocompatible
set backspace=2
syntax on
colorscheme ron
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\t\|\s\+$/
2mat ErrorMsg '\%120v.\+'
