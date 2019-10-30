set number

inoremap jj <ESC>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
call plug#begin('~/.vim/plugged')

Plug 'https://github.com/morhetz/gruvbox.git'
Plug 'klen/python-mode'
Plug 'https://github.com/christoomey/vim-conflicted.git'
Plug 'https://github.com/davidhalter/jedi-vim.git'
Plug 'https://github.com/iamcco/markdown-preview.nvim.git', { 'do': 'cd app & yarn install'  }
Plug 'terryma/vim-multiple-cursors'
Plug 'scrooloose/nerdtree'
Plug 'flazz/vim-colorschemes'
Plug 'vim-airline/vim-airline'
Plug 'tpope/vim-markdown'
Plug 'Xuyuanp/nerdtree-git-plugin'

call plug#end()
highlight ColorColumn ctermbg=grey
call matchadd('ColorColumn', '\%81v', 100)
colorscheme gruvbox

let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
