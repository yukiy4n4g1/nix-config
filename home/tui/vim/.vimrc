set number
set title

set fileencoding=utf-8
set encoding=utf-8

syntax on

set tabstop=4
set expandtab
set shiftwidth=4
set softtabstop=4
set autoindent
set smartindent
set smartcase
set wildmenu
set clipboard=unnamedplus
set belloff=all

" keybind
inoremap <silent> jk <esc>
noremap <C-j> gT
noremap <C-k> gt
noremap j gj
noremap k gk
noremap x "_x
noremap + <C-a>
noremap - <C-x>
nnoremap <C-n> :nohl
vnoremap < <gv
vnoremap > >gv

"" move line/word
noremap <C-e> $
noremap <C-a> 0
noremap <C-f> l
noremap <C-b> h
inoremap <C-e> <C-o>$
inoremap <C-a> <C-o>0

let mapleader = "\<Space>"
nnoremap <Leader>w :w<CR>
nnoremap <Leader>q :q<CR>
nnoremap <Leader>ff :tabe .<CR>
nnoremap <Leader>h <C-w>h
nnoremap <Leader>j <C-w>j
nnoremap <Leader>k <C-w>k
nnoremap <Leader>l <C-w>l
nnoremap <Leader>H <C-w>H
nnoremap <Leader>J <C-w>J
nnoremap <Leader>K <C-w>K
nnoremap <Leader>L <C-w>L

colorscheme desert

