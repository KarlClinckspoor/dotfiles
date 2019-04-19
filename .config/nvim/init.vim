set number
set relativenumber

filetype indent plugin on
syntax on

set wildmenu
set hlsearch
nnoremap <C-L> :nohl<CR><C-L>

set visualbell
set confirm

set shiftwidth=4
set softtabstop=4
set expandtab

let g:python_host_prog = '/home/karl/anaconda3/bin/python'
let g:python3_host_prog = '/home/karl/anaconda3/bin/python3'

" python from powerline.vim import setup as powerline_setup
" python powerline_setup()
" python del powerline_setup

" Plugins will be downloaded under the specified directory.
call plug#begin('~/.vim/plugged')

" Declare the list of plugins.
Plug 'tpope/vim-sensible'
Plug 'junegunn/seoul256.vim'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
" List ends here. Plugins become visible to Vim after this call.
call plug#end()
