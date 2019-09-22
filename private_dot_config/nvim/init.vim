set number relativenumber

call plug#begin()
Plug 'itchyny/lightline.vim'
Plug 'edkolev/tmuxline.vim'
Plug 'tpope/vim-fugitive'
Plug 'junegunn/goyo.vim'
Plug 'junegunn/fzf.vim'
Plug 'junegunn/limelight.vim'
call plug#end()

let g:lightline = {
  \ 'colorscheme': 'nord'
  \ }

let g:tmuxline_powerline_separators = 0


let g:limelight_conceal_ctermfg = 'darkgray'
let g:limelight_default_coefficient = 0.7
autocmd! User GoyoEnter Limelight
autocmd! User GoyoLeave Limelight!

set expandtab       
set shiftwidth=4   
set softtabstop=4 

if has ("autocmd")
    filetype plugin indent on
endif

set clipboard=unnamed

