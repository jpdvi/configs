set number

inoremap jj <ESC>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
nnoremap <Leader>s :<C-u>call gitblame#echo()<CR>
call plug#begin('~/.vim/plugged')
Plug 'zivyangll/git-blame.vim'
Plug 'davidgranstrom/nvim-markdown-preview'
Plug 'https://github.com/morhetz/gruvbox.git'
Plug 'klen/python-mode'
Plug 'https://github.com/christoomey/vim-conflicted.git'
Plug 'davidhalter/jedi-vim'
Plug 'terryma/vim-multiple-cursors'
Plug 'scrooloose/nerdtree'
Plug 'flazz/vim-colorschemes'
Plug 'vim-airline/vim-airline'
Plug 'tpope/vim-markdown'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'dense-analysis/ale'
Plug 'rust-lang/rust.vim'
Plug 'racer-rust/vim-racer'
Plug 'leafgarland/typescript-vim'
Plug 'christoomey/vim-tmux-navigator'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
call plug#end()
highlight ColorColumn ctermbg=grey
call matchadd('ColorColumn', '\%81v', 100)
colorscheme gruvbox

let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
let g:ale_fixers = {
      \   'rust': ['rustfmt'],
      \}

let g:ale_linters = {
      \'rust': ['rls'],
      \}

let g:ale_rust_rls_toolchain = 'nightly-2019-11-04'

let g:ale_fix_on_save = 1
let g:airline#extensions#ale#enabled = 1
nmap <silent> <C-k> <Plug>(ale_previous_wrap)
nmap <silent> <C-j> <Plug>(ale_next_wrap)
let g:deoplete#enable_at_startup = 1
let g:deoplete#sources = {'rust': ['ale', 'racer']}
let g:multi_cursor_use_default_mapping=1
let g:multi_cursor_quit_key            = '<Esc>'
command Tree NERDTree
command Rs resize
